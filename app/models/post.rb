class Post < ActiveRecord::Base
  has_many :post_tags
  has_many :tags, through: :posts_tag

  validates :title, presence: true
  validates :body, presence: true
end
