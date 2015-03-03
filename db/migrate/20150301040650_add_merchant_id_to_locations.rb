class AddMerchantIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :merchantId, :string
  end
end
