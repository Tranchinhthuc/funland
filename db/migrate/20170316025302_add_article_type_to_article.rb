class AddArticleTypeToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :article_type, :integer, null: false, default: 1
    add_column :articles, :status, :integer, null: false, default: 1
  end
end
