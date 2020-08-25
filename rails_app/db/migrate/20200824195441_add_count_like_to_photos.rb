class AddCountLikeToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :count_like, :integer
  end
end
