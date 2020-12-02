FactoryBot.define do
  factory :contact do
    name              {"skip"}
    mail              {"skip@gmail.com"}
    mail_confirmation {mail}
    message           {"お問い合わせ内容"}
  end
end
