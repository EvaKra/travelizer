class AddColumnPublishToItineraries < ActiveRecord::Migration[6.0]
  def change
    add_column :itineraries, :publish, :boolean, default: false
  end
end
