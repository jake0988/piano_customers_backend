class RemoveAvatarFromAdmins < ActiveRecord::Migration[6.0]
  def change
    remove_column :admins, :avatar
  end
end
