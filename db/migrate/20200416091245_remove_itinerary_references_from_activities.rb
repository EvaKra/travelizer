class RemoveItineraryReferencesFromActivities < ActiveRecord::Migration[6.0]
  def change
    remove_reference :activities, :itinerary, foreign_key: true
    add_reference :activities, :destination, foreign_key: true
  end
end
