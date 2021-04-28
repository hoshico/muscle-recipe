class Menu < ApplicationRecord
  has_one_attached :image
  has_one :order
  has_one :food_stuffs

  with_options presence: true do
      validates :title, :image, :recipe1
  end
end
