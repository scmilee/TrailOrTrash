# Trail
class Trail < ApplicationRecord
  belongs_to :national_park, optional: true
  has_and_belongs_to_many :hikers, :join_table => :trails_hiked

  def difficulty
    self.compute_difficulty
  end

  def compute_difficulty

    if self.length < 100
      'Easy'
    elsif self.length > 100 && self.length < 500
      'Medium'
    else
      'Hard'
    end

  end

  def add_a_hiker(hiker)
    self.hikers << hiker
  end

  def hiker_log
    self.hikers
  end

end