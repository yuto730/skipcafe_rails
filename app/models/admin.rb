class Admin < ApplicationRecord

  has_one_attached :image

  with_options presence: true do
    validates :title, length: { maximum: 20 }
    validates :image
    validates :description, length: { maximum: 1000 }
  end
end
