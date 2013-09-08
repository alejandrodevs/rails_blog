module RailsBlog
  module Administration
    class ApplicationController < ActionController::Base
      before_filter :authenticate_admin!

      def authenticate_admin!
        if !current_user || !current_user.admin?
          redirect_to root_path, alert: 'You need to be an admin before continuing.'
        end
      end
    end
  end
end
