class RentalsController < ApplicationController

	def show
		@rental = Rental.find(params[:id])
	end

	def index
		@rentals = Rental.all
	end

	def new
		@rental = Rental.new
	end

	def create
		@rental = Rental.new(rental_params)
		
		@rental.save
		redirect_to @rental
		# @rental.item_unavailable
	end

	private

	def rental_params
		params.require(:rental).permit(:user_id, :item_id, :start, :end)
	end

end
