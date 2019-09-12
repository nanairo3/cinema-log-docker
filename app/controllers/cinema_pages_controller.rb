# frozen_string_literal: true

class CinemaPagesController < ApplicationController
  def home
    response = Movie.now_playing
    @movies = []
    response.each do |m|
      @movies << m unless m['backdrop_path'].blank?
    end
    if @movies.count < 12
      response = Movie.now_playing(2)
      response.each do |m|
        @movies << m unless m['backdrop_path'].blank?
      end
    end
  end
end
