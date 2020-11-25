class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to admins_path
  end
end
