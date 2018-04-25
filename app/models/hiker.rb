class Hiker < ApplicationRecord
  has_and_belongs_to_many :trails, :join_table => :trails_hiked

  def miles_hiked
    trails.inject(0) {|sum, trail| sum + trail[:length]}
  end

end
