class RemoveLatAndLngFromBusiness < ActiveRecord::Migration
  def change
    remove_column :businesses, :lat, :decimal
    remove_column :businesses, :lng, :decimal
  end
end
