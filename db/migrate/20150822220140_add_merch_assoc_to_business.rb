class AddMerchAssocToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :merch_assoc, :string
  end
end
