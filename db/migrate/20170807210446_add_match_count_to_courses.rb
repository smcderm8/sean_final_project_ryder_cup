class AddMatchCountToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :matches_count, :integer
  end
end
