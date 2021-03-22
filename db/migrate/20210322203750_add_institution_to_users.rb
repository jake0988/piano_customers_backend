class AddInstitutionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :institution, :integer, default: 0
  end
end
