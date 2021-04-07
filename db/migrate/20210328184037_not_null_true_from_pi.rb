class NotNullTrueFromPi < ActiveRecord::Migration[6.0]
  def change
    change_table :appointments do |t|
      t.change :piano_id, :bigint, null: true
    end
  end
end
