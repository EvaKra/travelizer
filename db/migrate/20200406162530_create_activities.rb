class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :cost
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
