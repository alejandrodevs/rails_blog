require_dependency "rails_blog/application_controller"

module RailsBlog
  class PostsController < ApplicationController
    before_action :set_post, only: [:edit, :update, :destroy]
    before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
    before_filter :valid_user!, :only => [:edit, :update]

    # GET /posts
    def index
      @posts = Post.published.paginate(:page => params[:page], :per_page => RailsBlog.posts_per_page)
    end

    # GET /yyyy/mm/dd/post-name
    def show
			@post = Post.find_by_permalink(params[:id])

      # This shit needs to be refactored. :(
      if @post.nil?
        redirect_to root_path
      elsif @post.drafted? && current_user && current_user == @post.author
        @post.unpublish! if params[:state] == "unpublish"
      elsif !current_user || !(@post.published? || @post.drafted? || @post.unpublished?)
        redirect_to root_path
      elsif !@post.published? && current_user && current_user != @post.author
        redirect_to root_path
      end
    end

    # GET /posts/new
    def new
      @post = Post.new
    end

    # GET /posts/1/edit
    def edit
    end

    # POST /posts
    def create
      @post = Post.new(post_params)
      @post.author = current_user

      if @post.save
        redirect_to custom_post_path(*@post.url_params), notice: 'Post was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /posts/1
    def update
      if @post.update(post_params)
        redirect_to custom_post_path(*@post.url_params), notice: 'Post was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /posts/1
    def destroy
      @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Only allow to access if current user is the post author.
      def valid_user!
        redirect_to root_path if @post.author != current_user
      end

      # Only allow a trusted parameter "white list" through.
      def post_params
        params.require(:post).permit(:title, :body)
      end
  end
end
