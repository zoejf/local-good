class AddLatLngToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :lat, :decimal
    add_column :businesses, :lng, :decimal
  end
end
