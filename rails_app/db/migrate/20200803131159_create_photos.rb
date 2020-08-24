class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.text :title
      t.text :description
      t.string :image
      t.string :mode
      t.belongs_to :user
      t.belongs_to :album
      t.timestamps
    end
  end
end
