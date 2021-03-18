class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :user
      t.datetime :date
      t.text :price
      t.text :work_performed
      t.integer :initial_a4_frequency
      t.text :notes_for_customer

      t.timestamps
    end
  end
end
