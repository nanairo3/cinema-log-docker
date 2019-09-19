# frozen_string_literal: true

FactoryBot.define do
  factory :cinema do
    title { 'The Lion King' }
    image { 'https://image.tmdb.org/t/p/original/pSfwXxP94xktZKn3UaeVe6VdFZl.jpg' }
    movie_id { 420818 }
  end
end
