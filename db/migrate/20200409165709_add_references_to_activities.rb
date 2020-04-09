class AddReferencesToActivities < ActiveRecord::Migration[6.0]
  def change
    add_reference :activities, :itinerary, foreign_key: true
  end
end
