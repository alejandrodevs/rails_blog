module RailsBlog
  class Post < ActiveRecord::Base

    searchable do
      text :title, :body
    end

    belongs_to :user

    before_save :set_permalink
    after_save :sunspot_commit

    default_scope -> { order("created_at DESC") }

    def sunspot_commit
      Sunspot.commit
    end

    def search_description
      self.body.first(200).chomp(" ") + "..."
    end

    def set_permalink
      self.permalink = self.title.parameterize
    end

    def self.grouped_for_archive
      grouped_by_year = self.all.group_by{ |post| post.created_at.year }
      grouped_by_year.each do |year, posts|
        grouped_by_year[year] = posts.group_by{ |post| post.created_at.strftime("%B") }
      end
    end

    def url_params
      [self.created_at.year, self.created_at.month, self.created_at.day, self.permalink]
    end

    def published_at_description
      ", posted on
      #{self.created_at.strftime("%B")}
      #{self.created_at.day.to_s.rjust(2, "0")},
      #{self.created_at.year}"
    end
  end
end
