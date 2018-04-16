class NationalPark < ApplicationRecord

  has_many :trails
  attr_accessor :name

  def number_of_trails
    return trails.length
  end

  def has_trail?
    !trails.empty?
  end

end
