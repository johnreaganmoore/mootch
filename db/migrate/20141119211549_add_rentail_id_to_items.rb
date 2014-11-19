class AddRentailIdToItems < ActiveRecord::Migration
  def change
  	add_column :items, :rental_id, :integer
  end
end
