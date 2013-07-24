module RailsBlog
  module Sidebar
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates/sidebar", __FILE__)

      def create_sidebar_views
        template "search.html.erb", "app/views/rails_blog/sidebar/_search.html.erb"
        template "about_us.html.erb", "app/views/rails_blog/sidebar/_about_us.html.erb"
        template "latest_posts.html.erb", "app/views/rails_blog/sidebar/_latest_posts.html.erb"
      end
    end
  end
end
