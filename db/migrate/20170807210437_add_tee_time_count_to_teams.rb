class AddTeeTimeCountToTeams < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :tee_times_count, :integer
  end
end
