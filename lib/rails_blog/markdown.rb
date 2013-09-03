require 'redcarpet'
require 'rouge/plugins/redcarpet'

module RailsBlog
  class Markdown

    def self.options
      {:fenced_code_blocks => true, :highlight => true}
    end

    def self.render data
      Redcarpet::Markdown.new(HTMLWithRouge, options).render(data)
    end

  end

  class HTMLWithRouge < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet
  end
end
