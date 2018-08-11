class CreateItemsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :color
      t.float :height
      t.float :width
      t.float :length
      t.string :description
      t.integer :price
      t.boolean :sold, default: :false 
      t.integer :category_id
      t.integer :brand_id
    end
  end
end
