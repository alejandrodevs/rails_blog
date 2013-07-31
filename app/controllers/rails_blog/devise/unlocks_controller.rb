module RailsBlog
  module Devise
    class UnlocksController < ::Devise::UnlocksController
      layout "/layouts/rails_blog/application"
    end
  end
end
