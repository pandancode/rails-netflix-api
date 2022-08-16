class Review < ApplicationRecord
  belongs_to :user
  belongs_to :watchlist

  validates :comment, presence: true
  validates :comment, length: { minimum: 3, too_short: "3 characters is the minimum allowed" }
end
