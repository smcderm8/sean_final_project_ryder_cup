class AddAddressLatitudeToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :address_latitude, :float
  end
end
