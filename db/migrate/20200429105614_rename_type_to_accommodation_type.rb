class RenameTypeToAccommodationType < ActiveRecord::Migration[6.0]
  def change
    rename_column :accommodations, :type, :accommodation_type
  end
end
