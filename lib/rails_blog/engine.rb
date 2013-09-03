require "rails_blog/setup"
require "rails_blog/markdown"
require "devise"
require "sunspot_rails"
require "will_paginate"
require "haml-rails"
require "bootstrap-sass"
require "flash_rails_messages"
require "gravatar_image_tag"
require "redcarpet"
require "rouge"

module RailsBlog
  extend Setup

  class Engine < ::Rails::Engine
    isolate_namespace RailsBlog

    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec, :fixture => false
      g.javascript_engine :coffee
      g.stylesheet_engine :scss
      g.integration_tool :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.helper false
    end
  end
end
