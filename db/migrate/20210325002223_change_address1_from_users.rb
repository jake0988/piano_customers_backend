class ChangeAddress1FromUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :address1, :address
    remove_column :users, :address2
  end
end
