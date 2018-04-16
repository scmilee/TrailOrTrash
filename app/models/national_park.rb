class NationalPark < ApplicationRecord

  has_many :trails
  attr_accessor :name

  def initialize(park_name)
    @name = park_name
  end

  def number_of_trails
    return @trails.length
  end

  def has_trail?
    !@trails.empty?
  end

  def add_trail(trail)
    @trails << trail
  end

end
