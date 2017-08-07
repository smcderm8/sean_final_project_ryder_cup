class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :name
      t.string :handicap_index
      t.string :email
      t.string :phone_number
      t.string :photo_url

      t.timestamps

    end
  end
end
