module RailsBlog
  module Devise
    class RegistrationsController < ::Devise::RegistrationsController
      layout "/layouts/rails_blog/application"

      def account_update_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
      end
    end
  end
end
