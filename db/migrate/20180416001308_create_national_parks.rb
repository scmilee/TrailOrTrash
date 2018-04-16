class CreateNationalParks < ActiveRecord::Migration[5.1]
  def change
    create_table :national_parks do |t|
      t.string :name
      t.Trail :trails

      t.timestamps
    end
  end
end
