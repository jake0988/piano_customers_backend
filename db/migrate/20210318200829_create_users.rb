class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :username
      t.text :email
      t.text :address
      t.text :phone_number
      t.text :password_digest
      t.integer :number_of_pianos

      t.timestamps
    end
  end
end
