require_dependency "rails_blog/application_controller"

module RailsBlog
  class PostsController < ApplicationController
    before_action :set_post, only: [:show]

    def index
      @posts = Post.paginate(:page => params[:page], :per_page => RailsBlog.posts_per_page)
    end

    def show
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end
  end
end
