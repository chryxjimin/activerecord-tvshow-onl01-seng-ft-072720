require "pry"
class Show < ActiveRecord::Base

  def Show.highest_rating
    Show.all.maximum("rating")
  end

  def most_popular_show
  end

  def lowest_rating
  end

  def least_popular_show
  end

  def ratings_sum
    self.sum("ratings")
  end

  def popular_shows
  end

  def shows_by_alphabetical_order
  end
end


# create_table "shows", force: :cascade do |t|
#   t.string "name"
#   t.string "network"
#   t.string "day"
#   t.integer "rating"
#   t.string "season"
