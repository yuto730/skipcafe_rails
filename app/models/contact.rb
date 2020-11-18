class Contact < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :mail
    validates :encrypted_mail
    validates :subject
    validates :message
  end
end
