require "pry"
class Show < ActiveRecord::Base

  def self.highest_rating
    self.all.maximum(t.integer)
  end

  def self.most_popular_show
    self.highest_rating
  #  binding.pry
  end

  def self.lowest_rating
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
