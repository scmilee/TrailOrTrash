require "rails_helper"

RSpec.describe Trail do

  let (:trail) {Trail.new('Appalachian Trail', 2189)}

  it "can have a name" do
    expect(trail.name).to eq('Appalachian Trail')
  end

  it "can have a distance" do
    expect(trail.distance).to eq(2189)
  end

end
