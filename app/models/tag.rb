class Tag < ActiveRecord::Base
  has_many :tag_connections
  has_many :posts, through: :tag_connections
end
