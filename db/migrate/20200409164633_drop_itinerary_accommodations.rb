class DropItineraryAccommodations < ActiveRecord::Migration[6.0]
  def change
    drop_table :itinerary_accommodations
  end
end
