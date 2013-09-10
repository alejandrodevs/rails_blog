module RailsBlog
  class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable,
    # :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    has_many :posts, dependent: :destroy, foreign_key: :author_id

    def admin?
      self.type == "RailsBlog::Admin"
    end

  end
end
