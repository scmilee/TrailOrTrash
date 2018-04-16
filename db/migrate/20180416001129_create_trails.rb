class CreateTrails < ActiveRecord::Migration[5.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :distance
      t.string :latitude
      t.string :longitude
      t.integer :national_park_id

      t.timestamps
    end
  end
end
