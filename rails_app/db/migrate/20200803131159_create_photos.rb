class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.text :title
      t.text :description
      t.string :source_photo
      t.datetime :time
      t.string :mode_photo
      t.integer :count_photo
      t.belongs_to :user
      t.belongs_to :album
      t.timestamps
    end
  end
end
