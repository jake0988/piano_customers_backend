class Admins < ActiveRecord::Migration[6.0]
  def change
      add_column :admins, :username, :string
      add_column :admins, :avatar, :string
  end
end
