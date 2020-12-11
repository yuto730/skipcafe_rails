class AdminsController < ApplicationController
  before_action :set_admin, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  def index
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to admins_path
    else
      render :new
    end

    difference = (@admin.start_on - Date.today).to_i
    unless difference >= 1
      render :new
      return
    end

    difference = (@admin.end_on - @admin.start_on).to_i
    unless difference >= 0
      render :new
      return
    end
  end

  def news
    @admins = Admin.order("created_at DESC").page(params[:page]).per(5)
  end

  def edit
    @admins = Admin.find(params[:id])
    if @admins.user_id != current_user.id
      redirect_to news_admins_path
    end
  end

  def update
    if @admin.update(admin_params)
      redirect_to admins_path(@admin.id)
    else
      render :edit
    end

    difference = (@admins.start_on - Date.today).to_i
    unless difference >= 1
      render :edit
      return
    end

    difference = (@admins.end_on - @admins.start_on).to_i
    unless difference >= 0
      render :edit
      return
    end
  end

  def destroy
    if @admin.user_id == current_user.id
      @admin.destroy
      redirect_to admins_path
    else
      redirect_to news_admins_path
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:title, :image, :content).merge(user_id: current_user.id)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end
end
