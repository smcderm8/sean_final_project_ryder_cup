class AddTeeTimeCountToMatches < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :tee_times_count, :integer
  end
end
