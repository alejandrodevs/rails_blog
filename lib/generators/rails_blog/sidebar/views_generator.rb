module RailsBlog
  module Sidebar
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def create_sidebar_views
        directory "sidebar", "app/views/rails_blog/sidebar"
      end
    end
  end
end
