class AddScoreCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :scores_count, :integer
  end
end
