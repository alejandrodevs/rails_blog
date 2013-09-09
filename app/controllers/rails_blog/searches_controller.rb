require_dependency "rails_blog/application_controller"

module RailsBlog
  class SearchesController < ApplicationController
    def index
      @search_criteria = params[:query]
      @posts = Post.search do
        fulltext params[:query]
        with :state, "published"
      end.results
    end
  end
end
