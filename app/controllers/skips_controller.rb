class SkipsController < ApplicationController
  before_action :set_item, only: [:index, :news, :newsDetail]

  def index
  end

  def news
    @admins = Admin.order("created_at DESC").page(params[:page]).per(3)
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
    params.require(:contact).permit(:name, :url, :mail, :encrypted_mail, :subject, :message)
  end

  def set_item
    @admins = Admin.order("created_at DESC")
  end
end
