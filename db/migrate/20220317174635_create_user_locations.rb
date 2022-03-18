class CreateUserLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :user_locations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.boolean :alert_enabled
      t.integer :alert_threshold

      t.timestamps
    end
  end
end
