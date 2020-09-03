require "pry"
class Show < ActiveRecord::Base

  def self.highest_rating
    #binding.pry
    self.all.maximum("rating")
  end

  def Show.most_popular_show
    self.highest_rating
  end

  def self.lowest_rating
     self.all.minimum("rating")
  end

  def self.least_popular_show
  end

  def self.ratings_sum
    self.sum("ratings")
  end

  def self.popular_shows
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
