class Watchlist < ApplicationRecord
  belongs_to :user
  has_many :watchlist_movies, dependent: :destroy
  has_many :movies, through: :watchlist_movies
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
end
