class TagConnection < ActiveRecord::Base
  belongs_to :post
  belongs_to :tag
end
