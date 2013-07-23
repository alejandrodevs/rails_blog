module RailsBlog
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def create_initializer_setup_file
      template "rails_blog.rb", "config/initializers/rails_blog.rb"
    end

  end
end
