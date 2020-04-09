class AddForeignKeyToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_reference :destinations, :itinerary, foreign_key: true
  end
end
