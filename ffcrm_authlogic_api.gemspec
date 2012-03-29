# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'ffcrm_authlogic_api/version'

Gem::Specification.new do |s|
  s.name = 'ffcrm_authlogic_api'
  s.authors = ['Ben Tillman', 'Nathan Broadbent', 'Stephen Kenworthy']
  s.summary = 'Fat Free CRM - Authlogic Token API'
  s.description = 'Allow authentication via an application token '
  s.files = `git ls-files`.split("\n")
  s.version = FatFreeCRM::AuthlogicAPI::VERSION

  s.add_development_dependency 'rspec-rails', '~> 2.6'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'combustion'
  s.add_dependency 'fat_free_crm'
  s.add_dependency 'authlogic'
end
