class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
      t.string :main_photo
      t.text :description
      t.integer :price_per_day
      t.integer :max_rental
      t.integer :min_rental
      t.belongs_to :user

      t.timestamps
    end
  end
end
