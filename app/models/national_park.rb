class NationalPark < ApplicationRecord

  has_many :trails

  def number_of_trails
    return trails.length
  end

  def has_trail?
    !trails.empty?
  end

end
