class AddNameToFlights < ActiveRecord::Migration[5.0]
  def change
    add_column :flights, :name, :string
  end
end
