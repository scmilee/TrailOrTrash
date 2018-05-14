require 'rails_helper'

describe TrailRankHelper do
  describe "detect rank threshold" do
    it "will be false if miles hiked is less than highest threshold" do
      rank = TrailRankHelper.get_last_rank
      miles_hiked = rank[:threshold] - 1
      expect(TrailRankHelper.has_hiked_more_than_highest_threshold(rank, miles_hiked)).to be_falsey
    end

    it "will be truthy if miles hiked is greater than highest threshold" do
      rank = TrailRankHelper.get_last_rank
      miles_hiked = rank[:threshold] + 10

      expect(TrailRankHelper.has_hiked_more_than_highest_threshold(rank, miles_hiked)).to be_truthy
    end

    it "will be truthy if miles hiked is less than current rank threshold" do
      rank = TrailRankHelper.get_ranks[1]
      miles_hiked = rank[:threshold] - 10

      expect(TrailRankHelper.has_hiked_less_than_rank_threshold(rank, miles_hiked)).to be_truthy
    end

    it "will be truthy if miles hiked is greater than current rank threshold" do
      rank = TrailRankHelper.get_ranks[2]
      miles_hiked = rank[:threshold] + 10

      expect(TrailRankHelper.has_hiked_less_than_rank_threshold(rank, miles_hiked)).to be_falsey
    end


    it 'makes a large calculation with a mock' do
      mock = double("Mock")
      expect(mock).to receive(:execute).and_return("i am saving time").twice
      
      expect(mock.execute).to eq("i am saving time")
      expect(TrailRankHelper.do_large_calculation(mock)).to eq(45678)
    end

    it 'makes a large calculation with a FakeBigDependency' do
      expect(TrailRankHelper.do_large_calculation(FakeBigDependency.new)).to eq(45678)
    end
  end
end
