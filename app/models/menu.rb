class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :meet
  belongs_to :fish
  belongs_to :vege
  belongs_to :dairy

  has_one_attached :image
  belongs_to :user
  has_one :food_stuffs

  validates :meet_id, numericality: { other_than: 1 } 
  validates :fish_id, numericality: { other_than: 1 } 
  validates :vege_id, numericality: { other_than: 1 } 
  validates :dairy_id, numericality: { other_than: 1 } 
  
  with_options presence: true do
      validates :title, :image, :recipe
  end
end
