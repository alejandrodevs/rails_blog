module RailsBlog
  class Engine < ::Rails::Engine
    isolate_namespace RailsBlog

    config.generators do |g|
      g.template_engine :haml
    end
  end
end
