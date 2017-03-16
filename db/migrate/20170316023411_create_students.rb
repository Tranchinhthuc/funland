class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :fullname
      t.text :description
      t.integer :status, null: false, default: 1
      t.string :avatar

      t.timestamps
    end
  end
end
