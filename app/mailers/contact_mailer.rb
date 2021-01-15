class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: ENV['SKIP_USERNAME'], subject: "メールのタイトル"
  end
end