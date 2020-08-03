class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.text :first_name
      t.text :last_name
      t.string :email
      tf.password_field :password
      t.string :avatar

      t.timestamps
    end
  end
end
