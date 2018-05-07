require 'rails_helper'

RSpec.describe Hiker do

  let (:hiker) { create(:hiker, name:'Forrest Gump') }

  let(:trail) { create(:trail) }

  it 'has a name' do
    expect(hiker.name).to eq 'Forrest Gump'
  end

  it 'can add a trail to its hiked trails' do 

    hiker.trails << trail
    expect(hiker.number_of_trails_hiked).to eq(1)
  end

  it 'has a total miles hiked' do
    expect(hiker.miles_hiked).to eq(0)

    hiker.trails << trail

    expect(hiker.miles_hiked).to eq(trail.length)
  end

  it 'has a Baby rank if no trails have been hiked' do
    expect(hiker).to be_of_rank('Baby')
  end

  it 'has a Baby rank if no trails have been hiked' do
    hiker.trails << trail

    expect(hiker).to be_of_rank('Nuts')

  end
end
