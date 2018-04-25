require 'rails_helper'

RSpec.describe Trail do
  let (:trail) do
    Trail.create(
      name: 'Appalachian Trail',
      length: 2189,
      latitude: -23.232321323,
      longitude: 14.232313234
    )
  end

  let (:hiker) do
    Hiker.create(
      name: 'Forrest Gump'
    )
  end

  it 'can have a name' do
    expect(trail.name).to eq('Appalachian Trail')
  end

  it 'can have a length' do
    expect(trail.length).to eq(2189)
  end

  it 'can have a latitude' do
    expect(trail.latitude).to eq(-23.232321323)
  end

  it 'can have a longitude' do
    expect(trail.longitude).to eq(14.232313234)
  end

  it 'can have hikers who have hiked it' do 
    expect(trail.hikers.length).to eq(0)
  end
end
