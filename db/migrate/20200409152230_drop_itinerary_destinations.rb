class DropItineraryDestinations < ActiveRecord::Migration[6.0]
  def chang
    drop_table :itinerary_destinations
  end
end
