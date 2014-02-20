class TagConnections < ActiveRecord::Migration
  def change
  	create_table :tag_connections do |t|
      t.belongs_to :post
      t.belongs_to :tag

      t.timestamps
  	end
  end
end
