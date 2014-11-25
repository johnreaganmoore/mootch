class AddDatesToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :start, :datetime
    add_column :rentals, :end, :datetime
  end
end
