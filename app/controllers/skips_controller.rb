class SkipsController < ApplicationController
  before_action :set_item, only: [:index, :news, :newsDetail]

  def index
  end

  def news
    @admins = Admin.page(params[:page]).per(8)
  end

  def newsDetail
    @admin = Admin.find(params[:id])
  end

  def access
  end

  def contact
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to root_path
    else
      redirect_to contact_skips_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :url, :mail, :mail_confirmation, :message)
  end

  def set_item
    @admin_news = Admin.where('start_on <= ?', Date.today).order("created_at DESC")
  end
end