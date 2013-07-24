require_dependency "rails_blog/application_controller"

module RailsBlog
  class PostsController < ApplicationController

    def index
      @posts = Post.paginate(:page => params[:page], :per_page => RailsBlog.posts_per_page)
    end

    def show
			@post = Post.find_by_permalink(params[:id])
    end

  end
end
