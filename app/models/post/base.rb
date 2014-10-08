module Post
  class Base < ActiveRecord::Base
    self.table_name = :posts
    belongs_to :user
    validates :title, presence: true
    validates :user_id, presence: true
    validates :user, presence: true
    acts_as_votable
    acts_as_commentable
  end
end
