require_dependency "rails_blog/administration/application_controller"

module RailsBlog
  module Administration
    class PostsController < ApplicationController
      before_filter :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]
      before_action :set_post, only: [:show, :edit, :update, :destroy]

      # GET /posts
      def index
        if params[:state]
          @posts = Post.where(state: params[:state]).paginate(:page => params[:page], :per_page => 10)
        else
          @posts = Post.drafted.paginate(:page => params[:page], :per_page => 10)
        end
      end

      # GET /posts/1
      def show
        if params[:state]
          @post.send(:"#{params[:state]}!")
          flash[:notice] = "Post has been updated successfully."
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
        @post.user = current_user

        if @post.save
          redirect_to custom_post_path(*@post.url_params), notice: 'Post was successfully created.'
        else
          render action: 'new'
        end
      end

      # PATCH/PUT /posts/1
      def update
        if @post.update(post_params)
          redirect_to @post, notice: 'Post was successfully updated.'
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

        # Only allow a trusted parameter "white list" through.
        def post_params
          params.require(:post).permit(:title, :body)
        end
    end
  end
end
