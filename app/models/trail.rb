# Trail
class Trail < ApplicationRecord
  belongs_to :national_park, optional: true
end
