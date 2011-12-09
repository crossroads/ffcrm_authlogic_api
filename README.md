# CRM Authlogic API
===================

This plugin enables applications to authenticate with Fat Free CRM using 
the Authlogic `single_access_token` method.

## Installation

* Install this plugin into your Fat Free CRM vendor/plugins folder and run
`rake db:migrate:plugins`. This will create the application_accounts table.
* In your controller, add a before_filter for the action you wish to protect:
`before_filter :require_application, :only => :meta_search`
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
