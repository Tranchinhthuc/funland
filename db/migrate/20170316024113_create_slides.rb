class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.integer :status, null: false, default: 1

      t.timestamps
    end
  end
end
