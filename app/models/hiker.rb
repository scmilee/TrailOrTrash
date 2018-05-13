class Hiker < ApplicationRecord
  has_and_belongs_to_many :trails, :join_table => :trails_hiked

  def number_of_trails_hiked
    return trails.length
  end

  def miles_hiked
    trails.inject(0) {|sum, trail| sum + trail[:length]}
  end

  def perform(big_dependency)
    big_dependency.execute
    return 123
  end

  def rank 
    ranks = TrailRankHelper.get_ranks

    miles_hiked = self.miles_hiked
    rank_title = ranks[0][:name]

    ranks.each do |rank| 
      if (TrailRankHelper.has_hiked_more_than_highest_threshold(rank, miles_hiked))
        rank_title = rank[:name]
        break
      elsif (TrailRankHelper.has_hiked_less_than_rank_threshold(rank, miles_hiked))
        rank_title = rank[:name]
        break
      end
    end

    rank_title.to_s
  end
end
