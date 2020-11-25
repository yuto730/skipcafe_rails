class Contact < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :mail
    validates :mail_confirmation, confirmation: true
    validates :subject, length: { maximum: 20 }
    validates :message, length: { maximum: 1000 }
  end
end
