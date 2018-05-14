module TrailRankHelper
  def self.get_ranks
    [
      { :name => "Baby", :threshold => 100 },
      { :name => "Chump", :threshold => 500 },
      { :name => "Decent", :threshold => 1000 },
      { :name => "Baller", :threshold => 2000 },
      { :name => "Nuts", :threshold => 5000 },
    ]
  end

  def self.has_hiked_more_than_highest_threshold(rank, miles_hiked)
    ranks = self.get_ranks

    rank[:threshold] == self.get_last_rank[:threshold] && miles_hiked >= rank[:threshold]
  end

  def self.has_hiked_less_than_rank_threshold(rank, miles_hiked)
    miles_hiked <= rank[:threshold]
  end

  def self.get_last_rank
    self.get_ranks[self.get_ranks.length - 1]
  end

  def self.do_large_calculation(big_dependency)
    big_dependency.execute
    45678
  end
end
