class DropItineraryTransports < ActiveRecord::Migration[6.0]
  def change
    drop_table :itinerary_transports
  end
end
