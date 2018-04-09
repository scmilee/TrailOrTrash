require "rails_helper"

RSpec.describe National_park do

  let (:park) {National_park.new('billsPark')}

  it "considers an empty National park to not have a trailhead" do
    expect(park.has_trailhead?).to be_falsey
  end

  it "considers a national park to add a trailhead" do

    trailhead_count = park.trail_heads.length

    park.add_a_trailhead("trailObject")
    change_in_trailheads = park.trail_heads.length - trailhead_count


    expect(park.has_trailhead?).to be_truthy
    expect(change_in_trailheads).to be(1)
  end

end
