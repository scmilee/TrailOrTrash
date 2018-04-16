# Trai;
class Trail < ApplicationRecord
  belongs_to :project

  attr_accessor :name, :length, :latitude, :longitude
end
