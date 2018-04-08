class National_park

  attr_accessor :park_name
  attr_accessor :trail_head_array

  def initialize(park_name)
    @park_name = park_name
    @trail_head_array = []
  end

  def has_trailhead?
    trail_head_array.length > 0
  end

  def add_a_trailhead(trailObject)
    trail_head_array << trailObject
  end


end