class Users < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
    t.string :first_name
    t.string :last_name
    t.string :email
    t.integer :number_of_pianos
    t.string :technician_notes
    t.string :address
    t.string :password_digest
    t.integer :phone_number

    t.timestamps
    end
  end
end
