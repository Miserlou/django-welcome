from django.core.mail import send_mail
from django.core.management.base import BaseCommand, CommandError
from django.conf import settings
from django.contrib.auth.models import User
from django.template.loader import render_to_string

from optparse import make_option
import datetime

class Command(BaseCommand):
    """
    Find users who have signed up in the past X minutes and email them.

    """
    option_list = BaseCommand.option_list + (
        make_option('--since',
            help='Minutes since sign-up. Default 60.',
            default=60),
         make_option('--test',
         	action="store_true",
         	dest="test",
            help='Test run (emails user 0). Default False.',
            default=False),
         make_option('--dry',
         	action="store_true",
         	dest="dry",
            help='Dry run, does not actually send emails. Default False.',
            default=False),
         make_option('--quiet',
         	action="store_false",
         	dest="verbose",
            help='Quiet emails being sent. Default False.',
            default=True),
    )

    help = '''Find users who have signed up within the past X minutes (default 60) and email them.

Define your email templates in **TEMPALTE_DIR**/email/welcome_subject.html and **TEMPALTE_DIR**/email/welcome_body.html

You must also define your WELCOME_FROM_EMAIL in your settings file.

EXAMPLE:

/manage.py welcome --since 60'''
    def handle(self, **options):
		minutes =  int(options.get('since'))
		test =  bool(options.get('test'))
		dry =  bool(options.get('dry'))
		verbose =  bool(options.get('verbose'))

		# Get New Users
		today = datetime.datetime.now()
		minutes = datetime.timedelta(minutes=minutes)
		begin = today - minutes
		if not test:
			new_users = User.objects.filter(date_joined__range=(begin, today)).order_by('-date_joined')
		else:
			new_users = User.objects.all().order_by('date_joined')
			new_users = [new_users[0]]

		for user in new_users:
			subject = render_to_string("email/welcome_subject.html", {'user': user})
			body = render_to_string("email/welcome_body.html", {'user': user})

			if verbose:
				print "****************************************"
				print "To: " + user.email
				print "Subject: " + subject
				print body
				print "****************************************\n"

			if not dry:
				try:
					send_mail(	subject=subject, 
								message=body, 
								from_email=settings.WELCOME_FROM_EMAIL, 
								recipient_list=[user.email], 
								fail_silently=False, 
								auth_user=None, 
								auth_password=None
							)
				except Exception, e:
					print e

