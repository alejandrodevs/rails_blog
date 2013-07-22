require_dependency "rails_blog/application_controller"

module RailsBlog
  class SearchesController < ApplicationController
    def index
      @search_criteria = params[:query]
      @posts = Post.search{ fulltext params[:query] }.results
    end
  end
end
