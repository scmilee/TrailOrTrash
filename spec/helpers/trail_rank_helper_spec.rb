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
  end
end
