class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :last_name, :text
    add_column :users, :first_name, :text
    add_column :users, :avatar, :string
    add_column :users, :count_album, :integer
    add_column :users, :count_photo, :integer
    add_column :users, :count_follower, :integer
    add_column :users, :count_followee, :integer
  end
end
