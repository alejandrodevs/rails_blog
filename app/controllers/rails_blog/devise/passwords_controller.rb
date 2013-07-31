module RailsBlog
  module Devise
    class PasswordsController < ::Devise::PasswordsController
      layout "/layouts/rails_blog/application"
    end
  end
end
