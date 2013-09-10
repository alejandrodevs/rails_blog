require_dependency "rails_blog/administration/application_controller"

module RailsBlog
  module Administration
    class UsersController < ApplicationController
      before_action :set_user, only: [:show, :edit, :update, :destroy]
      before_filter :valid_user!, :only => [:edit, :update, :destroy]

      # GET /users
      def index
        @users = User.paginate(:page => params[:page], :per_page => 8)
      end

      # GET /users/1
      def show
      end

      # GET /users/new
      def new
        @user = User.new
      end

      # GET /users/1/edit
      def edit
      end

      # POST /users
      def create
        @user = User.new(user_params)

        if @user.save
          redirect_to administration_user_path(@user), notice: 'User was successfully created.'
        else
          render action: 'new'
        end
      end

      # PATCH/PUT /users/1
      def update
        if @user.update(user_params)
          redirect_to administration_user_path(@user), notice: 'User was successfully updated.'
        else
          render action: 'edit'
        end
      end

      # DELETE /users/1
      def destroy
        @user.destroy
        redirect_to administration_users_path, notice: 'User was successfully destroyed.'
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user
          @user = User.find(params[:id])
        end

        # Only allow to access if user is not an admin.
        def valid_user!
          redirect_to administration_users_path if @user.admin?
        end

        # Only allow a trusted parameter "white list" through.
        def user_params
          params.require(:user).permit(:name, :email, :password)
        end

    end
  end
end
