require "rails_helper"

RSpec.describe National_park do

  it "considers a National park to not have a trailhead" do
    park = National_park.new('mikesPark')
    expect(park.has_trailhead?).to be_falsey
  end

  it "considers a national park to add a trailhead" do
    park = National_park.new('billsPark')
    park.add_a_trailhead("trailObject")
    expect(park.has_trailhead?).to be_truthy
  end
  
end