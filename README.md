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

4. Create templates for your emails. These live in **TEMPLATE_DIR**/email/welcome_subject.html and **TEMPLATE_DIR**/email/welcome_body.html. These have access to a User object titled _user_ if you want to get their full name or other parts of their profile. Remember to include important information for your users! Include a personal message, perhaps a link to a feedback survey, and your personal contact information (Email/Twitter/Phone number) so that customers can call you up directly.

5. Execute like so:

    ```bash
    ./manage.py welcome --since 60
    ```

6. Define a cron job to do it automatically!

Options
---------

```bash
Usage: manage.py welcome [options] 

Find users who have signed up within the past X minutes (default 60) and email them.

Define your email templates in **TEMPALTE_DIR**/email/welcome_subject.html and **TEMPALTE_DIR**/email/welcome_body.html

You must also define your WELCOME_FROM_EMAIL in your settings file.

EXAMPLE:

./manage.py welcome --since 60

Options:
  --test                Test run (emails oldest user in stead). Default False.
  --dry                 Dry run, does not actually send emails. Default False.
  --quiet               Quiet emails being sent. Default False.
  -h, --help            show this help message and exit
```
