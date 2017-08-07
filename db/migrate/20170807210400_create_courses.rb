class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :image_url
      t.string :name
      t.string :address
      t.string :par
      t.string :rating
      t.string :slope

      t.timestamps

    end
  end
end
