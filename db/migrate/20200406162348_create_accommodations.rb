class CreateAccommodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.string :address
      t.string :type
      t.time :check_in_time
      t.time :check_out_time
      t.date :check_in_date
      t.date :check_out_date
      t.integer :cost
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
