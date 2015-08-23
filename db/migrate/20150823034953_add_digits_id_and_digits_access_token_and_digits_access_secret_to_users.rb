class AddDigitsIdAndDigitsAccessTokenAndDigitsAccessSecretToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :digits_id, :string
  	add_column :users, :digits_access_token, :string
  	add_column :users, :digits_access_secret, :string
  end
end