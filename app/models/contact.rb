class Contact < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :mail, confirmation: true
    validates :mail_confirmation
    validates :message, length: { maximum: 1000 }
  end
end
