class Post < ActiveRecord::Base
  has_many :tag_connections
  has_many :tags, through: :tag_connections

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
