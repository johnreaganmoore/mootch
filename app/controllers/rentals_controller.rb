class RentalsController < ApplicationController

	def show
		@rental = Rental.find(params[:id])
	end

	def new
		@rental = Rental.new
	end

	def create
		@rental = Rental.new(rental_params)
		
		 @rental.save
		 redirect_to @rental
	end

	private

	def rental_params
		params.require(:rental).permit(:user_id, :item_id)
	end

end
