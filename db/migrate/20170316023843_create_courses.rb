class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :status, null: false, default: 1
      t.integer :course_type, null: false, default: 1

      t.timestamps
    end
  end
end
