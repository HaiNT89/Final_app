class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.text :title
      t.text :description
      t.string :mode_album
      t.datetime :time
      t.integer :count_album
      t.belongs_to :user
      t.timestamps
    end
  end
end
