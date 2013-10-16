{% block subject %}
{{num_new_users}} new users!
{% endblock %}

{% block body %}
New users!

{% for user in new_users %}
{{user.username}}
{{user.first_name}} {{user.last_name}}
{{user.email}}

https://twitter.com/{{user.username}}
https://github.com/{{user.username}}
http://www.linkedin.com/vsearch/p?firstName={{user.first_name}}&lastName={{user.last_name}}

{%endfor%}

Hooray!
{% endblock %}

{% block html %}
<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 100%; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    

    <title>{{num_new_users}} new users!</title>
  </head>
  <body style="margin: 0; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; color: #333333; background-color: #ffffff; width: 100%; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; padding: 0;">
    <center>
      <table id="main" class="container-fluid" style="padding-right: 20px; padding-left: 20px; *zoom: 1; max-width: 100%; background-color: transparent; border-collapse: collapse; border-spacing: 0; width: 700px; text-align: left;">
        <tr style="vertical-align: top;">
          <td style="border-collapse: collapse;">
            <!-- Head -->
            <table id="header" style="max-width: 100%; background-color: transparent; border-collapse: collapse; border-spacing: 0; text-align: left;">
              <tr style="vertical-align: top;">
                <td style="border-collapse: collapse;">
                  <h1 style="margin: 10px 0; font-family: inherit; font-weight: bold; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 38.5px;">{{num_new_users}} new users!</h1>
                </td>
              </tr>
            </table>
            <!-- /Head -->
          </td>
        </tr>

        <tr style="vertical-align: top;">
          <td style="border-collapse: collapse;">
            <!-- Content -->
            <table id="content" style="max-width: 100%; background-color: transparent; border-collapse: collapse; border-spacing: 0; text-align: left;">
              <tr style="vertical-align: top;">
                <td style="border-collapse: collapse;">

                    {% for user in new_users %}

                    <h2 style="margin: 10px 0; font-family: inherit; font-weight: bold; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 31.5px;">{{user.first_name}} {{user.last_name}}</h2>
                    <p style="margin: 0 0 10px;">{{user.username}}<br />{{user.email}}

                    https://twitter.com/{{user.username}}
                    https://github.com/{{user.username}}
                    http://www.linkedin.com/vsearch/p?firstName={{user.first_name}}&lastName={{user.last_name}}

                    </p>
                    {%endfor%}
                 
                </td>
              </tr>
            </table>
            <!-- /Content -->
          </td>
        </tr>

        <tr style="vertical-align: top;">
          <td style="border-collapse: collapse;">
            <!-- Footer -->
            <table id="footer" style="max-width: 100%; background-color: transparent; border-collapse: collapse; border-spacing: 0; text-align: left;">
              <tr style="vertical-align: top;">
                <td style="border-collapse: collapse;">
                  <p style="margin: 0 0 10px;">(C) Our Website</p>
                </td>
              </tr>
            </table>
            <!-- /Footer -->
          </td>
        </tr>
      </table>
    </center>
  </body>
</html>
{% endblock %}

