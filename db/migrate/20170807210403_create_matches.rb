class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :course_id
      t.date :date
      t.time :time

      t.timestamps

    end
  end
end
