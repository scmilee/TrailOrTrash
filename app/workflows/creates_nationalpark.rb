
class CreatesNationalpark

  attr_accessor :name, :nationalpark

  def initialize(name: "")
    @name = name
    @success = false
  end

  def success?
    @success
  end

  def build
    self.nationalpark = NationalPark.new(name: name)
    NationalPark
  end

  def create
    build
    result = self.nationalpark.save
    @success = result
  end

end