class AddDescriptionColumnToTransports < ActiveRecord::Migration[6.0]
  def change
     add_column :transports, :description, :text
  end
end
