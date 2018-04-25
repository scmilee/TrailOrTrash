# Trail
class Trail < ApplicationRecord
  belongs_to :national_park, optional: true
  has_and_belongs_to_many :hikers
end
