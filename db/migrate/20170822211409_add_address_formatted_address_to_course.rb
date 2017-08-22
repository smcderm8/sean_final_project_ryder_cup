class AddAddressFormattedAddressToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :address_formatted_address, :string
  end
end
