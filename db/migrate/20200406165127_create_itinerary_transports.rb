class CreateItineraryTransports < ActiveRecord::Migration[6.0]
  def change
    create_table :itinerary_transports do |t|
      t.references :itinerary, null: false, foreign_key: true
      t.references :transport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
