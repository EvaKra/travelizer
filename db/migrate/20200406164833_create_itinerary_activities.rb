class CreateItineraryActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :itinerary_activities do |t|
      t.references :itinerary, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
