Rails.application.routes.draw do
  namespace :admin do
    resources :application_accounts
  end
end
