class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to admins_path
  end

  def user
    @users = User.all.page(params[:page]).per(1)
  end
end