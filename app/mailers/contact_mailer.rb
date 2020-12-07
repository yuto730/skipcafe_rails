class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    binding.pry
    mail to: ENV['SKIP_USERNAME'], subject: "お問い合わせ内容"
  end
end