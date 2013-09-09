$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_blog"
  s.version     = RailsBlog::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsBlog."
  s.description = "TODO: Description of RailsBlog."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency 'haml-rails', '~> 0.4'
  s.add_dependency 'coffee-rails', '~> 4.0.0'
  s.add_dependency 'jbuilder', '~> 1.5.0'
  s.add_dependency 'jquery-rails', '~> 3.0.4'
  s.add_dependency 'sass-rails', '~> 4.0.0'
  s.add_dependency 'flash_rails_messages', '~> 0.0.4'
  s.add_dependency 'bootstrap-sass', '~> 2.3.2.1'
  s.add_dependency 'will_paginate', '~> 3.0.4'
  s.add_dependency 'sunspot_rails', '~> 2.0.0'
  s.add_dependency 'sunspot_solr', '~> 2.0.0'
  s.add_dependency 'gravatar_image_tag', '~> 1.1.3'
  s.add_dependency 'redcarpet', '~> 3.0.0'
  s.add_dependency 'rouge', '~> 0.4.0'
  s.add_dependency 'aasm', '~> 3.0.22'
  s.add_dependency 'social-share-button', '~> 0.1.4'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails', '~> 2.14.0'
  s.add_development_dependency 'guard-rspec', '~> 0.7.3'
  s.add_development_dependency 'simplecov', '~> 0.7.1'
  s.add_development_dependency 'factory_girl', '~> 4.2.0'
  s.add_development_dependency 'factory_girl_rails', '~> 4.2.1'
  s.add_development_dependency 'shoulda-matchers', '~> 2.2.0'
  s.add_development_dependency 'quiet_assets', '~> 1.0.2'
end
