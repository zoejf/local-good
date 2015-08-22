class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :categories
      t.string :address
      t.string :phone
      t.string :website
      t.string :description

      t.timestamps null: false
    end
  end
end
