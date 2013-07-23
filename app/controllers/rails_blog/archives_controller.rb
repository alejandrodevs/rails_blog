require_dependency "rails_blog/application_controller"

module RailsBlog
  class ArchivesController < ApplicationController
    def index
      @posts = Post.grouped_for_archive
    end
  end
end
