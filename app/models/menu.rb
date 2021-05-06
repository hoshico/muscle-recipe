class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :meet
  belongs_to :fish
  belongs_to :vege
  belongs_to :dairy

  has_one_attached :image
  belongs_to :user
  has_one :food_stuff, dependent: :destroy

end
