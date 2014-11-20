class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.belongs_to :user
      t.belongs_to :item

      t.timestamps
    end
  end
end
