module RailsBlog
  class User < ActiveRecord::Base

    devise :database_authenticatable,
           :registerable,
           :recoverable,
           :rememberable,
           :trackable,
           :validatable

    has_many :posts, dependent: :destroy, foreign_key: :author_id

    validates_presence_of :name

    def admin?
      self.type == "RailsBlog::Admin"
    end

  end
end
