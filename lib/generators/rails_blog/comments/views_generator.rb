module RailsBlog
  module Comments
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      def create_sidebar_views
        directory "posts", "app/views/rails_blog/posts"
      end
    end
  end
end
