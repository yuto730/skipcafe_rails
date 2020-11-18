class SkipsController < ApplicationController
  def index
  end

  def news
  end

  def newsDetail
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
end
