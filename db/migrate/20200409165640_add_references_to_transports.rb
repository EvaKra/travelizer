class AddReferencesToTransports < ActiveRecord::Migration[6.0]
  def change
    add_reference :transports, :itinerary, foreign_key: true
  end
end
