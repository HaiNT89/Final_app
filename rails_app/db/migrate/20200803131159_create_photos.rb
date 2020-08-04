class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.text :title_photo
      t.text :description_photo
      t.string :source_photo
      t.datetime :time_photo
      t.string :mode_photo
      t.belongs_to :account
      t.belongs_to :album
      t.timestamps
    end
  end
end
