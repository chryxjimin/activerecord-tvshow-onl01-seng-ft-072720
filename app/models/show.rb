require "pry"
class Show < ActiveRecord::Base

  def self.highest_rating
    self.all.maximum("rating")
  end

  def self.most_popular_show
    self.highest_rating
  end

  def Show.lowest_rating
  end

  def Show.least_popular_show
  end

  def Show.ratings_sum
    self.sum("ratings")
  end

  def Show.popular_shows
  end

  def Show.shows_by_alphabetical_order
  end
end


# create_table "shows", force: :cascade do |t|
#   t.string "name"
#   t.string "network"
#   t.string "day"
#   t.integer "rating"
#   t.string "season"
