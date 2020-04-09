class AddReferencesToAccommodations < ActiveRecord::Migration[6.0]
  def change
    add_reference :accommodations, :itinerary, foreign_key: true
  end
end
