module RailsBlog
  class Engine < ::Rails::Engine
    isolate_namespace RailsBlog

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec, :fixture => false
      g.javascript_engine :coffee
      g.integration_tool :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.helper false
    end
  end
end
