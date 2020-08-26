class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :text
    add_column :users, :first_name, :text
    add_column :users, :avatar, :string
    add_column :users, :count_album, :integer, default: 0
    add_column :users, :count_photo, :integer, default: 0
    add_column :users, :count_follower, :integer, default: 0
    add_column :users, :count_followee, :integer, default: 0
  end
end
