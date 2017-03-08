class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :author_id
      t.string  :author_type

      t.timestamps
    end
  end
end
