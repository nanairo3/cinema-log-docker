# frozen_string_literal: true

class Movie < ApplicationRecord
  include HTTParty

  default_options.update(verify: false)
  default_params api_key: "#{ Rails.application.credentials.api_key }"
  format :json

  def self.now_playing(page = 1)
    base_uri 'https://api.themoviedb.org/3/movie/now_playing'
    get('', query: { page: page, language: 'ja-JP', region: 'JP' })['results']
  end
end
