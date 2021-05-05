class MenuFoodStuff
  include ActiveModel::Model
  attr_accessor :image, :title, :recipe, :meet_id, :meet_quantity, :fish_id, :fish_quantity, :vege_id, :vege_quantity, :dairy_id, :dairy_quantity, :total_p, :total_f, :total_c, :etc_food, :user_id, :menu_id
  
  with_options presence: true do
      validates :image, :etc_food, :user_id, :menu_id
      validates :title, length: { maximum: 20 }
      validates :recipe, length: { maximum: 100 }
  end

  validates :meet_id, numericality: { other_than: 1 } 
  validates :fish_id, numericality: { other_than: 1 } 
  validates :vege_id, numericality: { other_than: 1 } 
  validates :dairy_id, numericality: { other_than: 1 } 
  
  def save
    menu = Menu.create(title: title, recipe: recipe)
    FoodStuff.create(meet_id: meet_id, meet_quantity: meet_quantity, fish_id: fish_id, fish_quantity: fish_quantity, vege_id: vege_id, vege_quantity: vege_quantity, total_p: total_p, total_f: total_f, total_c: total_c, etc_food: etc_food, menu_id: menu.id)
  end
end