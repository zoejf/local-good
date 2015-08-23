class AddLatAndLngToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :lat, :string
    add_column :businesses, :lng, :string
  end
end
