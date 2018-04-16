require 'rails_helper'

RSpec.describe NationalPark do
  let (:park) do
    NationalPark.create(
      name: 'Bills Park'
    )
  end

  let (:trail) do
    Trail.create(
      name: 'Appalachian Trail',
      length: 2189,
      latitude: 0,
      longitude: 0,
      park: park.id
    )
  end

  it 'considers a National park to not have a trail' do
    puts park
    expect(park.has_trail?).to be_falsey
  end

  it "should increment the trail count" do
    expect{park.trails.create(name: 'Appalachian Trail')}.to change{park.number_of_trails}.by(1)
  end
end
