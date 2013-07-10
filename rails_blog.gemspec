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

  s.add_development_dependency "sqlite3"
end
