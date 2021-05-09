class FoodStuff < ApplicationRecord
  belongs_to :menu, optional: true

  validates :etc_food, presence: true
end
