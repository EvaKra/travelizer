class AddDescriptionToDestinations < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :description, :text
  end
end
