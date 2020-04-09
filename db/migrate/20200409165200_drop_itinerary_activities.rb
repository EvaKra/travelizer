class DropItineraryActivities < ActiveRecord::Migration[6.0]
  def change
    drop_table :itinerary_activities
  end
end
