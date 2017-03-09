class CreateWordLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :word_lessons do |t|
      t.integer :word_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
