{% block subject %}
Welcome, {{ user.name }}!
{% endblock %}

{% block body %}
Welcome, {{user}}! I just wanted to send you a personal note thanking you for joining our site.
{% endblock %}

{% block html %}
<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 100%; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    

    <title>Welcome, {{user.username}}!</title>
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
                  <h1 style="margin: 10px 0; font-family: inherit; font-weight: bold; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 38.5px;">Welcome, {{user.username}}!</h1>
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
                  <h2 style="margin: 10px 0; font-family: inherit; font-weight: bold; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 31.5px;">Our website loves you.</h2>
                  <p style="margin: 0 0 10px;">Maecenas sed diam eget risus varius blandit sit amet non magna. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas faucibus mollis interdum. Etiam porta sem malesuada magna mollis euismod. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Curabitur blandit tempus porttitor.</p>
                  <p style="margin: 0 0 10px;">Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vestibulum id ligula porta felis euismod semper.</p>
                  <table class="row-fluid" style="width: 100%; *zoom: 1; max-width: 100%; background-color: transparent; border-collapse: collapse; border-spacing: 0; text-align: left;">
                    <tr style="vertical-align: top;">
                      <td class="span4" style="float: left; min-height: 30px; margin-left: 0; width: 31.914893617021278%; display: block; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; *margin-left: 2.074468085106383%; *width: 31.861702127659576%; border-collapse: collapse;">
                        <h3 style="margin: 10px 0; font-family: inherit; font-weight: bold; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 24.5px;">Span 4</h3>
                        <p style="margin: 0 0 10px;">You can use the bootstrap grid system on tables!</p>
                        <a href="#" class="btn btn-success" style="color: #ffffff; text-decoration: none; display: inline-block; *display: inline; *zoom: 1; padding: 4px 12px; margin-bottom: 0; font-size: 14px; line-height: 20px; text-align: center; vertical-align: middle; cursor: pointer; text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); background-color: #5bb75b; background-image: linear-gradient(to bottom, #62c462, #51a351); background-repeat: repeat-x; filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); *background-color: #51a351; border: 1px solid #cccccc; *border: 0; border-bottom-color: #b3b3b3; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; *margin-left: .3em; -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05); -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05); box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);">Click Me Now</a>
                      </td>
                      <td class="span6" style="float: left; min-height: 30px; margin-left: 2.127659574468085%; width: 48.93617021276595%; display: block; -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; *margin-left: 2.074468085106383%; *width: 48.88297872340425%; border-collapse: collapse;">
                        <h3 style="margin: 10px 0; font-family: inherit; font-weight: bold; line-height: 40px; color: inherit; text-rendering: optimizelegibility; font-size: 24.5px;">Span 6</h3>
                        <p style="margin: 0 0 10px;">Add <span class="label" style="display: inline-block; padding: 2px 4px; font-size: 11.844px; font-weight: bold; line-height: 14px; color: #ffffff; vertical-align: baseline; white-space: nowrap; text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); background-color: #999999; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px;">span*</span> too the <code style="padding: 2px 4px; font-family: Monaco, Menlo, Consolas, Courier New, monospace; font-size: 12px; color: #d14; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; background-color: #f7f7f9; border: 1px solid #e1e1e8; white-space: nowrap;">td</code> elements. You can use <code style="padding: 2px 4px; font-family: Monaco, Menlo, Consolas, Courier New, monospace; font-size: 12px; color: #d14; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; background-color: #f7f7f9; border: 1px solid #e1e1e8; white-space: nowrap;">@media</code> queries to resize <code style="padding: 2px 4px; font-family: Monaco, Menlo, Consolas, Courier New, monospace; font-size: 12px; color: #d14; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; background-color: #f7f7f9; border: 1px solid #e1e1e8; white-space: nowrap;">.container-fluid</code> and change the layout of your email.</p>
                        <a href="#" class="btn btn-primary" style="color: #ffffff; text-decoration: none; display: inline-block; *display: inline; *zoom: 1; padding: 4px 12px; margin-bottom: 0; font-size: 14px; line-height: 20px; text-align: center; vertical-align: middle; cursor: pointer; text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); background-color: #006dcc; background-image: linear-gradient(to bottom, #0088cc, #0044cc); background-repeat: repeat-x; filter: progid:DXImageTransform.Microsoft.gradient(enabled = false); border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); *background-color: #0044cc; border: 1px solid #cccccc; *border: 0; border-bottom-color: #b3b3b3; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; *margin-left: .3em; -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05); -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05); box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);">Click Me Now</a>
                      </td>
                    </tr>
                  </table>
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
                  <p style="margin: 0 0 10px;">Copyrights and all that stuff</p>
                  <p style="margin: 0 0 10px;"><a href="#" style="color: #0088cc; text-decoration: none;">Unsubscribe?</a> <a href="#" style="color: #0088cc; text-decoration: none;">View in browser</a></p>
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

