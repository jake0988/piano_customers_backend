class CreatePianos < ActiveRecord::Migration[6.0]
  def change
    create_table :pianos do |t|
      t.belongs_to :user
      t.text :model
      t.text :make
      t.text :serial
      t.integer :age
      t.text :image_url
      t.text :private_technical_notes

      t.timestamps
    end
  end
end
