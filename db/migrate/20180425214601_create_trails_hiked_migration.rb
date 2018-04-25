class CreateTrailsHikedMigration < ActiveRecord::Migration[5.1]
  def change
    create_table :trails_hiked, id: false do |t|
      t.belongs_to :trail, index: true
      t.belongs_to :hiker, index: true
    end
  end
end
