class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :level
      t.integer :age
      t.text :description

      t.timestamps
    end
  end
end
