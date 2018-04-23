require 'rails_helper'

RSpec.describe CreatesNationalpark do

  let(:park_creator) do  

    CreatesNationalpark.new(
      name: name
      )
  end

  describe "initialization" do
    let(:name) {"bills park"}

    it "creates a National Park with a given name " do
      park_creator.build
      expect(park_creator.nationalpark.name).to eq("bills park")
    end
  end

  describe "failure cases" do

    describe "fails when trying to save a National Park with no name" do
      let(:name) {""}
      specify { park_creator.create; expect(park_creator).not_to be_a_success }
    end
    
  end

end