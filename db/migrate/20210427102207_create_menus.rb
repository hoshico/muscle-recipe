class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
 
      t.string :title,    null: false
      t.text :recipe1,    null: false
      t.text :recipe2
      t.text :recipe3    
      t.text :recipe4    
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
