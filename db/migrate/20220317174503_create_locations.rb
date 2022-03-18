class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.float :lat
      t.float :lon
      t.integer :current_aqi

      t.timestamps
    end
  end
end
