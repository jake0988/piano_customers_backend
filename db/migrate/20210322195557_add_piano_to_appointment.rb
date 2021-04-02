class AddPianoToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :piano, null: false, foreign_key: true
  end
end
