class CreateItineraryAccommodations < ActiveRecord::Migration[6.0]
  def change
    create_table :itinerary_accommodations do |t|
      t.references :itinerary, null: false, foreign_key: true
      t.references :accommodation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
