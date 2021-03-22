class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.text :password_digest
      t.text :email
    end
  end
end
