class Hiker < ApplicationRecord
  has_and_belongs_to_many :trails, :join_table => :trails_hiked

  def number_of_trails_hiked
    return trails.length
  end

end
