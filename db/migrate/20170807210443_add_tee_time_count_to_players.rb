class AddTeeTimeCountToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_column :players, :tee_times_count, :integer
  end
end
