class AddScoreCountToHoles < ActiveRecord::Migration[5.0]
  def change
    add_column :holes, :scores_count, :integer
  end
end
