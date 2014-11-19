class UsersController < ApplicationController

	def index

	end

	def login
	  @user = User.koala(request.env['omniauth.auth']['credentials'])

		User.where(facebook_id: @user['id']).first_or_create

	end

end
