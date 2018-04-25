require 'rails_helper'

RSpec.describe Hiker, type: :model do
  let (:hiker) do
    Hiker.create(
      name: 'Forrest Gump'
    )
  end

  it 'can have a name' do
    expect(hiker.name).to eq 'Forrest Gump'
  end
end
