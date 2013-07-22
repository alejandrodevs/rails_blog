module RailsBlog
  class Post < ActiveRecord::Base
    default_scope -> { order("created_at DESC") }

    def description
      self.content.first(200).chomp(" ") + "..."
    end
  end
end
