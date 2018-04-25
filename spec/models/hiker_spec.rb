require 'rails_helper'

RSpec.describe Hiker, type: :model do
  let (:hiker) do
    Hiker.create(
      name: 'Forrest Gump'
    )
  end

  let (:trail) do
    Trail.create(
      name: 'Appalachian Trail',
      length: 2189,
      latitude: -23.232321323,
      longitude: 14.232313234
    )
  end

  it 'can have a name' do
    expect(hiker.name).to eq 'Forrest Gump'
  end

  it 'can have a total miles hiked' do
    expect(hiker.miles_hiked).to eq(0)

    hiker.trails << trail

    expect(hiker.miles_hiked).to eq(trail.length)
  end
end
