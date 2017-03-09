class CreateStudentLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :student_lessons do |t|
      t.integer :student_id
      t.integer :lesson_id
      t.integer :progress
      t.datetime :last_learned_at
      t.integer :learned_count

      t.timestamps
    end
  end
end
