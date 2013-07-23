module RailsBlog
  module Setup

    mattr_accessor :blog_title

    def setup
      yield(self) if block_given?
    end

  end
end
