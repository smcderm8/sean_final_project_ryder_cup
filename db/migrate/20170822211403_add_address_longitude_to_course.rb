class AddAddressLongitudeToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :address_longitude, :float
  end
end
