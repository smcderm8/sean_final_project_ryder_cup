class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :image_url
      t.string :name
      t.string :address
      t.integer :par
      t.integer :rating
      t.integer :slope
      t.integer :yardage

      t.timestamps

    end
  end
end
