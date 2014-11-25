class Rental < ActiveRecord::Base
	belongs_to :item
	belongs_to :user

	validates :start, :end, :overlap => {:scope => "item_id"}


	def item_unavailable
		self.item.available = false
		self.item.save	
	end
end
