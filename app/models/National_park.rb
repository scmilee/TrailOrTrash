class National_park

  attr_accessor :park_name
  attr_accessor :trail_heads

  def initialize(park_name)
    @park_name = park_name
    @trail_heads = []
  end

  def has_trailhead?
    trail_heads.length > 0
  end

  def add_a_trailhead(trailObject)
    trail_heads << trailObject
  end


end