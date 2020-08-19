class AddAvatarsToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :avatars, :string
  end
end
