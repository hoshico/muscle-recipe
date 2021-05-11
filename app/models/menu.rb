class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :meet
  belongs_to :fish
  belongs_to :vege
  belongs_to :dairy

  has_one_attached :image
  belongs_to :user
  has_one :food_stuff, dependent: :destroy
  accepts_nested_attributes_for :food_stuff
  has_many :likes, dependent: :destroy

  with_options presence: true do
    validates :image, :user_id
    validates :title, length: { maximum: 20 }
    validates :recipe, length: { maximum: 100 }
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
