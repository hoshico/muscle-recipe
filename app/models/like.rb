class Like < ApplicationRecord
  belongs_to :user
  belongs_to :menu

  validates :menu_id, uniqueness: { scope: :user_id }
end
