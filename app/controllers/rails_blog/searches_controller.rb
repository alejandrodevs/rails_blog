require_dependency "rails_blog/application_controller"

module RailsBlog
  class SearchesController < ApplicationController

    # GET /search
    def index
      @search_criteria = params[:query]
      @posts = Post.search{ fulltext params[:query]; with :state, "published" }.results
    end

  end
end
