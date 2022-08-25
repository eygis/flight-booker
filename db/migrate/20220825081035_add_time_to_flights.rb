class AddTimeToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :flight_time, :string
  end
end
