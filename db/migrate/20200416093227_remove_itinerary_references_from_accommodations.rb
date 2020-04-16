class RemoveItineraryReferencesFromAccommodations < ActiveRecord::Migration[6.0]
  def change
    remove_reference :accommodations, :itinerary, foreign_key: true
    add_reference :accommodations, :destination, foreign_key: true
  end
end
