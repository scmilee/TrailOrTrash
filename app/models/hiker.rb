class Hiker < ApplicationRecord
  has_and_belongs_to_many :trails
end