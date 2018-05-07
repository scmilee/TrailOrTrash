require 'rails_helper'

RSpec.describe Trail do
  let(:trail) { create(:trail) }

  let(:shortTrail) { create(:trail, length: 9) }

  let (:hiker) do
    Hiker.create(
      name: 'Forrest Gump'
      )
  end

  it 'has a name' do
    expect(trail.name).to eq('Appalachian Trail')
  end

  it 'has a length' do
    expect(trail.length).to eq(2189)
  end

  it 'has a latitude' do
    expect(trail.latitude).to eq(-23.232321323)
  end

  it 'has a longitude' do
    expect(trail.longitude).to eq(14.232313234)
  end

  it 'can be Hard to hike' do
    expect(trail).to be_of_difficulty('Hard')
  end

  it 'can be Easy to hike' do
    expect(shortTrail).to be_of_difficulty('Easy')
  end

  it 'has hikers who have hiked it' do 

    expect { trail.add_a_hiker(hiker) }.to change { trail.hiker_log.length}.by(1)    
  end
end
