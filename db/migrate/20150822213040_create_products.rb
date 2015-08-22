class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :inventory_count
      t.float :price
      t.string :image

      t.timestamps null: false
    end
  end
end
