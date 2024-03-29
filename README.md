# CRM Authlogic API

# This project is no longer actively maintained.

This plugin enables applications to authenticate with Fat Free CRM using 
the Authlogic `single_access_token` method. Credit to http://blog.smsohan.com/2010/04/using-authlogic-and-single-access-token.html for reference information whilst building this.

## Installation

* Install this plugin into your Fat Free CRM vendor/plugins folder and run
`rake db:migrate:plugins`. This will create the application_accounts table.
* For your controller action, you need to remove the `require_user` authentication layer and add a `require_application` before_filter.

````ruby
skip_before_filter :require_user, :only => :my_action
before_filter :require_application, :only => :my_action
````
* Pop the following method in your application_controller

````ruby
def require_application
  @current_application_session ||= ApplicationSession.find
  unless @current_application_session
    redirect_to login_url
    false
  end
end
````

* Start up Fat Free CRM and go to the "App API" tab in the Admin section.
* Create an application account and give it a token.
* Your external app may now connect using http://path.to/your/controller/action?app_key=your_app_token

Where `your_app_token` is the token specified in the previous step.

## TODO

* Add `require_application` function to `ApplicationController` automagically
* Improve formatting of *App API* screen.
* Add more tests.

Copyright (c) 2011 Global Hand, released under the MIT license
