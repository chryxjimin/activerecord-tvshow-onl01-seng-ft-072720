require "pry"
class Show < ActiveRecord::Base

  def self.highest_rating
    #binding.pry
    self.all.maximum("rating")
  end

  def self.most_popular_show
    #binding.pry
    Show.where(:rating => highest_rating).first
  end

  def self.lowest_rating
     self.all.minimum("rating")
  end

  def self.least_popular_show
  end

  def self.ratings_sum
    self.all.sum("rating")
  end

  def self.popular_shows
    Show.where(:rating > 5)
    binding.pry
  end

  def self.shows_by_alphabetical_order
  end
end


# create_table "shows", force: :cascade do |t|
#   t.string "name"
#   t.string "network"
#   t.string "day"
#   t.integer "rating"
#   t.string "season"
