module RailsBlog
  module Devise
    class SessionsController < ::Devise::SessionsController
      layout "/layouts/rails_blog/application"
    end
  end
end
