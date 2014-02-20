class Post < ActiveRecord::Base
  has_many :tag_connections
  has_many :tags, through: :tag_connections

  validates :title, presence: true
  validates :body, presence: true
end
