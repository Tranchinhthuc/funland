class CreateSlidePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :slide_pictures do |t|
      t.integer :slide_id
      t.string :picture

      t.timestamps
    end
  end
end
