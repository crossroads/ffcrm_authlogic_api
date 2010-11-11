class ApplicationSession < Authlogic::Session::Base
  authenticate_with ApplicationAccount

  api_key_param 'app_key'
end
