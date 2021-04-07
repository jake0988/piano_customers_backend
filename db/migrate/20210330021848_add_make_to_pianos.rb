class AddMakeToPianos < ActiveRecord::Migration[6.0]
  def change
    add_column :pianos, :make, :string
  end
end
