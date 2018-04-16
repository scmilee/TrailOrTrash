# Trai;
class Trail < ApplicationRecord
  belongs_to :national_park

  attr_accessor :name, :length, :latitude, :longitude
end
