![Customer service from the future.](http://i.imgur.com/exqZhMr.gif)

django-welcome
==============

Provide great customer service to your new users by sending them personal welcome messages after they sign up.

Quick start
------------

0. Install django-welcome

    ```python
    pip install django-welcome
    ```

1. Add "welcome" to your INSTALLED_APPS setting like this:

    ```python
    INSTALLED_APPS = (
      ...
      'welcome',
    )
    ```

3. Define WELCOME_FROM_EMAIL in your local settings:

    ```python
    WELCOME_FROM_EMAIL = 'Your Name <yourname@project.tld>'
    ```

4. Create templates for your emails. These live in %%TEMPLATE_DIR%%/email/welcome_subject.html and %%TEMPLATE_DIR%%/email/welcome_body.html. These have access to a User object titled _user_ if you want to get their full name or other parts of their profile. Remember to include important information for your users! Include a personal message, perhaps a link to a feedback survey, and your personal contact information (Email/Twitter/Phone number) so that customers can call you up directly.

5. Execute it with manage.py. _since_ defines the number of minutes since sign up to send to recent users, default 60.

    ```bash
    ./manage.py welcome --since 60
    ```

6. Define a cron job to do it automatically!

Notifications
---------

django-welcome can also be used to send regular notifications to admins about new users. Digest emails can be sent with the contact information of all new users.

1. To enable this, you first need to define one more setting:

    ```python
    NOTIFICATION_TO_EMAIL = 'Your Name <yourname@project.tld>'
    ```

2. Then create your templates. These live in the same email templates directory as the welcome messages, and are
entitled %%TEMPLATE_DIR%%/email/notify_subject.html and %%TEMPLATE_DIR%%/email/notify_body.html. Example templates can be found in the source code of this package.

3. Finally, run welcome with the --notify argument. (Note that this command will also send welcome emails.)

    ```bash
    ./manage.py welcome --notify
    ```


Options
---------

```bash
Usage: manage.py welcome [options] 

Find users who have signed up within the past X minutes (default 60) and email them.

Define your email templates in **TEMPALTE_DIR**/email/welcome_subject.html and **TEMPALTE_DIR**/email/welcome_body.html

You must also define your WELCOME_FROM_EMAIL and NOTIFICATION_TO_EMAIL in your settings file.

EXAMPLE:

./manage.py welcome --since 60

Options:
  --since=SINCE         Minutes since sign-up. Default 60.
  --test                Test run (emails oldest user in stead). Default False.
  --dry                 Dry run, does not actually send emails. Default False.
  --quiet               Quiet emails being sent. Default False.
  --notify              Notify admins with new user information. Default
                          False.
```
