class Contact < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :mail, confirmation: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
    validates :mail_confirmation
    validates :message, length: { maximum: 1000 }
  end
end
