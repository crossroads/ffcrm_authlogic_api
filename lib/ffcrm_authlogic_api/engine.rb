module FatFreeCRM
  module AuthlogicAPI
    class Engine < Rails::Engine
      config.to_prepare do
        require 'ffcrm_authlogic_api/application_authentication_helper'
        begin
          FatFreeCRM::Tabs.admin << {
            :text => "API Tokens",
            :url => { :controller => "admin/application_accounts" }
          }
        rescue TypeError
          puts "You must migrate your settings table."
        end
      end
    end
  end
end
