module FatFreeCRM
  module AuthlogicAPI
    class Engine < Rails::Engine
      config.to_prepare do
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
