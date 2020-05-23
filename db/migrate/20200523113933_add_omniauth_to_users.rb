class AddOmniauthToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :provider, :string 
    add_column :users, :uid, :string
    add_column :users, :full_name, :string
    add_column :users, :avatar_url, :text
  end
end
