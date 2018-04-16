require "rails_helper"

RSpec.describe Trail do

  let (:trail) {
    Trail.create(
      name: 'Appalachian Trail',
      length: 2189,
      latitude: 0,
      longitude: 0,
    )
}

  it "can have a name" do
    expect(trail.name).to eq('Appalachian Trail')
  end

  it "can have a length" do
    expect(trail.length).to eq(2189)
  end

end