class National_park

  attr_accessor :name
  attr_accessor :trails

  def initialize(park_name)
    @name = park_name
    @trails = []
  end

  def number_of_trails
    return @trails.length
  end

  def has_trail?
    @trails.length > 0
  end

  def add_a_trail(trail)
    @trails << trail
  end

end