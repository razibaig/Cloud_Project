class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def index
  	@users = User.all
  end

  def destroy_user
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to  users_index_path
  end

  private
  def check_admin
  	if !current_user.is_admin?
  		redirect_to root_path
  	end
  end
end
