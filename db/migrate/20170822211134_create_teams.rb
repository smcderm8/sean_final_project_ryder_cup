class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :photo_url

      t.timestamps

    end
  end
end
