class ApplicationSession < Authlogic::Session::Base
  authenticate_with ApplicationAccount

  params_key :app_key
  login_field false

  single_access_allowed_request_types :any
end
