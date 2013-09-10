require_dependency "rails_blog/application_controller"

module RailsBlog
  class ProfileController < ApplicationController
    before_filter :authenticate_user!, :only => [:index, :update]
    before_action :set_current_user, only: [:index, :update]

    def index
    end

    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to profile_path, notice: 'Your profile was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'index' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_current_user
        @user = current_user
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.require(:user).permit(:name)
      end
  end
end
