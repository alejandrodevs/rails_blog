module RailsBlog
  class Post < ActiveRecord::Base

    searchable do
      text :title, :content
    end

    after_save :update_sunspot

    default_scope -> { order("created_at DESC") }

    def update_sunspot
      Sunspot.commit
    end

    def description
      self.content.first(200).chomp(" ") + "..."
    end

    def self.grouped_for_archive
      grouped_by_year = self.all.group_by{ |post| post.created_at.year }
      grouped_by_year.each do |year, posts|
        grouped_by_year[year] = posts.group_by{ |post| post.created_at.strftime("%B") }
      end
    end
  end
end
