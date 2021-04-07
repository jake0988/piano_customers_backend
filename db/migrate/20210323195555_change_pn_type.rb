class ChangePnType < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.change :phone_number, :string
    end
  end
end
