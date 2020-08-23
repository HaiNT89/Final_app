class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.string :name_react
      t.integer :amount_react
      t.belongs_to :user
      t.references :reactable, polymorphic: true
      t.timestamps
    end
  end
end
