require 'ostruct'
Dir[File.dirname(__FILE__) + '/setup/*.rb'].each{ |file| require file }

module RailsBlog
  module Setup

    mattr_accessor :blog_title,
                   :small_blog_title

    def sidebar_widgets
      @sidebar_widgets ||= ArrayWidget.new
    end

    def setup
      yield(self) if block_given?
    end

  end
end
