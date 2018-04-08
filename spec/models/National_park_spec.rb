require "rails_helper"

RSpec.describe National_park do

  it "considers a National park to not have a trailhead" do
    park = National_park.new('mikesPark')
    expect(park.has_trailhead?).to be_falsey
  end

  it "considers a national park to add a trailhead" do
    park = National_park.new('billsPark')
    trailhead_count = park.trail_head_array.length

    park.add_a_trailhead("trailObject")
    change_in_trailheads = park.trail_head_array.length - trailhead_count


    expect(park.has_trailhead?).to be_truthy
    expect(change_in_trailheads).to be(1)
  end

end