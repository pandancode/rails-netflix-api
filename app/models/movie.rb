class Movie < ApplicationRecord
  has_many :favorites
  has_many :watchlist_movies
end
