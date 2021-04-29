class Menu < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_one :food_stuffs

  with_options presence: true do
      validates :title, :image, :recipe
  end
end
