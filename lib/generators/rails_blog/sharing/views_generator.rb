module RailsBlog
  module Sharing
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def create_sidebar_views
        directory "sharing", "app/views/rails_blog/posts"
      end
    end
  end
end
