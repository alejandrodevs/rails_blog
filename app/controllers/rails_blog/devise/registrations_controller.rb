module RailsBlog
  module Devise
    class RegistrationsController < ::Devise::RegistrationsController
      layout "/layouts/rails_blog/application"
    end
  end
end
