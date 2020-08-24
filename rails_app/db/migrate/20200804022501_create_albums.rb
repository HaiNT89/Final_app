class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.text :title
      t.text :description
      t.string :mode
      t.belongs_to :user
      t.timestamps
    end
  end
end
