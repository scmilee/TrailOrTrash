require "rails_helper"

RSpec.describe National_park do

  let (:park) {National_park.new('billsPark')}
  let (:new_trail) {Trail.new('bills Trail', 345)}

  it "considers a National park to not have a trail" do
    expect(park.has_trail?).to be_falsey
  end

  it "should increment the trail count" do
    expect{park.add_a_trail(new_trail)}.to change{park.number_of_trails}.by(1)
  end

end