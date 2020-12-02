FactoryBot.define do
  factory :admin do

    after(:build) do |news|
      news.image.attach(io: File.open('public/images/skipcafe_img.jpg'), filename: 'skipcafe_image.jpg')
    end

    title   {"お知らせ"}
    content {"お知らせ詳細"}
    association :user
  end
end
