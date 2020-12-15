class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: ENV['SKIP_USERNAME'], subject: "お問い合わせ内容"
  end
end