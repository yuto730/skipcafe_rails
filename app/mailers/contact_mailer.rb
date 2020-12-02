class ContactMailer < ApplicationMailer

  # def contact_mail(contact)
  #   @contact = contact
  #   mail to: ENV['SKIP_USERNAME']
  # end
  default from: "example@example.com"   # 送信元アドレス
  default to: ENV['SKIP_USERNAME']     # 送信先アドレス

  def contact_mail(contact)
    @contact = contact
    mail(:subject => 'ホームページからお問い合わせがありました')
  end
end