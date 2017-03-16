class CreateGeneralDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :general_descriptions do |t|
      t.integer :description_for, null: false, default: 1
      t.text :content
      t.integer :status, null: false, default: 1

      t.timestamps
    end
  end
end
