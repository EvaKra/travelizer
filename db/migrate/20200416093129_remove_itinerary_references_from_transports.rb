class RemoveItineraryReferencesFromTransports < ActiveRecord::Migration[6.0]
  def change
    remove_reference :transports, :itinerary, foreign_key: true
    add_reference :transports, :destination, foreign_key: true
  end
end
