class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :origin
      t.string :meaning
      t.string :picture
      t.string :audio

      t.timestamps
    end
  end
end
