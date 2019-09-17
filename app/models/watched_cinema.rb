class WatchedCinema < ApplicationRecord
  belongs_to :user
  belongs_to :cinema
end
