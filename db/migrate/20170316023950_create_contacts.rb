class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text :description
      t.integer :status, null: false, default: 1

      t.timestamps
    end
  end
end
