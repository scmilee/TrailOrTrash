# Trai;
class Trail < ApplicationRecord
  belongs_to :park

  attr_accessor :name, :length, :latitude, :longitude
end
