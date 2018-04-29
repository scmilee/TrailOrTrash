class Hiker < ApplicationRecord
  has_and_belongs_to_many :trails, :join_table => :trails_hiked


  def number_of_trails_hiked
    return trails.length
  end

  def change_name(name)
    self.name = name
  end

  def miles_hiked
    trails.inject(0) {|sum, trail| sum + trail[:length]}
  end

  def rank 
    ranks = [
      { :name => "Baby", :threshold => 100 },
      { :name => "Chump", :threshold => 500 },
      { :name => "Decent", :threshold => 1000 },
      { :name => "Baller", :threshold => 2000 },
      { :name => "Nuts", :threshold => 5000 },
    ]

    miles_hiked = self.miles_hiked
    rank_title = ranks[0][:name]

    ranks.each do |rank| 
      if (rank[:threshold] == ranks[ranks.length - 1][:threshold] && miles_hiked >= rank[:threshold])
        rank_title = rank[:name]
        break
      elsif (miles_hiked <= rank[:threshold])
        rank_title = rank[:name]
        break
      end
    end

    rank_title.to_s


  end
end
