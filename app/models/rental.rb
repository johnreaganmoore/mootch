class Rental < ActiveRecord::Base
	has_one :item
	belongs_to :user
end