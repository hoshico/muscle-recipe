class CreateFoodStuffs < ActiveRecord::Migration[6.0]
  def change
    create_table :food_stuffs do |t|
      t.integer :meet_id
      t.integer :meet_quantity
      t.integer :fish_id
      t.integer :fish_quantity
      t.integer :vege_id
      t.integer :vege_quantity
      t.integer :dairy_id
      t.integer :dairy_quantity
      t.integer :total_p
      t.integer :total_f
      t.integer :total_c
      t.text    :etc_food,                    null: false
      t.references :menu,  foreign_key: true, null: false  
      t.timestamps
    end
  end
end
