class AddSummaryColumnToItineraries < ActiveRecord::Migration[6.0]
  def change
    add_column :itineraries, :summary, :text
  end
end
