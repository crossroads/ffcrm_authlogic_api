module FatFreeCRM
  module AuthlogicAPI
    class Engine < Rails::Engine
      config.to_prepare do
        require 'ffcrm_authlogic_api/application_authentication_helper'
        begin
          FatFreeCRM::Tabs.admin << {
            :text => "API Tokens",
            :url => { :controller => "admin/application_accounts" },
            :icon => 'fa-exchange'
          }
        rescue TypeError
          puts "You must migrate your settings table."
        end
      end

      initializer :append_migrations do |app|
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end

    end
  end
end
