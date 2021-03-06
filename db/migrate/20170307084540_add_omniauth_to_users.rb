class AddOmniauthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :facebook_token, :string
    add_column :users, :authentication_token, :string
    add_column :users, :full_name, :string
  end
end
