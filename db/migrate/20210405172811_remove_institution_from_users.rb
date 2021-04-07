class RemoveInstitutionFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :institution
    remove_column :users, :institution_name
    remove_column :users, :customer_notes
  end
end
