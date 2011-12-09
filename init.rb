require "fat_free_crm"

FatFreeCRM::Plugin.register(:crm_authlogic_api, self) do
          name "Authlogic API"
        author "Ben Tillman"
       version "0.1"
   description "Integrates authlogic_api"
           tab :admin, :text => "App API", :url => { :controller => "admin/application_accounts" }
end
