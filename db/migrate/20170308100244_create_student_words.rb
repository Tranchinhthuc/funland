class CreateStudentWords < ActiveRecord::Migration[5.0]
  def change
    create_table :student_words do |t|
      t.integer :student_id
      t.integer :word_id
      t.integer :status

      t.timestamps
    end
  end
end
