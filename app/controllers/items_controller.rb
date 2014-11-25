class ItemsController < ApplicationController
	
	def index
		@items = Item.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new(item_params)
		
		 @item.save
		 redirect_to @item
	end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		
		@item.save
		redirect_to @item
	end

	private

	def item_params
		params.require(:item).permit(:user_id, :name, :description, :price_per_day, :main_photo, :max_rental, :min_rental, :available)
	end

end
