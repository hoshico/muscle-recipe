class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :meet

  has_one_attached :image
  belongs_to :user
  has_one :food_stuffs

  validates :meet_id, numericality: { other_than: 1 } 
  with_options presence: true do
      validates :title, :image, :recipe
  end
end
