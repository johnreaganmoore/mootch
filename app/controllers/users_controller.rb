class UsersController < ApplicationController

	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
	end

	def login
	  @user = User.koala(request.env['omniauth.auth']['credentials'])

		User.where(facebook_id: @user['id']).first_or_create
	end

	def show
	
	end

	private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :items)
  end

end
