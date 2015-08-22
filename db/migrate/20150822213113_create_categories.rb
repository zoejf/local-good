class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :type
      t.string :icon

      t.timestamps null: false
    end
  end
end
