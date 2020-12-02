class Contact < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :mail
    validates :mail_confirmation, confirmation: true
    validates :message, length: { maximum: 1000 }
  end
end
