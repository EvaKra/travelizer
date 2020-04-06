class CreateTransports < ActiveRecord::Migration[6.0]
  def change
    create_table :transports do |t|
      t.string :type
      t.date :arrival_date
      t.date :departure_date
      t.time :arrival_time
      t.time :departure_time
      t.integer :cost
      t.string :start_location
      t.string :via_location
      t.string :end_location

      t.timestamps
    end
  end
end
