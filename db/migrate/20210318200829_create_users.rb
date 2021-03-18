class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :address
      t.string :phone_number
      t.string :password_digest
      t.integer :number_of_pianos

      t.timestamps
    end
  end
end
