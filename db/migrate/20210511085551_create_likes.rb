class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id,  foreign_key: true, null: false 
      t.integer :menu_id,  foreign_key: true, null: false 
      t.timestamps
    end
  end
end
