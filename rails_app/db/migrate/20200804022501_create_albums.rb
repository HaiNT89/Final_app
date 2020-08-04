class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.text :title_album
      t.text :description_album
      t.string :source_album
      t.string :mode_album
      t.datetime :time_album
      t.integer :amount_photo
      t.belongs_to :account
      t.timestamps
    end
  end
end
