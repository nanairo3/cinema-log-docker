# frozen_string_literal: true

class CinemaPagesController < ApplicationController

  def home
    response = Movie.now_playing(1)
    @movies = []
    response.each do |m|
      @movies << m unless m['poster_path'].blank?
    end
    if @movies.count < 12
      response = Movie.now_playing(2)
      response.each do |m|
        @movies << m unless m['poster_path'].blank?
      end
    end
  end

  def show
    @movie = Movie.details(params[:id])
    @posts = Post.where(movie_id: params[:id])
    @cast_range = if @movie['credits']['cast'].count > 6
                    6
                  else
                    @movie['credits']['cast'].count
                  end
    @trailers = Movie.trailers(params[:id])

    @directors = {}
    @writers = {}
    @story = {}
    @screenplay = {}
    @novel = {}
    @music = {}
    @movie['credits']['crew'].each do |crew|
      @directors[crew['name']] = crew['id'] if crew['job'] == 'Director'
      @writers[crew['name']] = crew['id'] if crew['job'] == 'Writer'
      @story[crew['name']] = crew['id'] if crew['job'] == 'Story'
      @screenplay[crew['name']] = crew['id'] if crew['job'] == 'Screenplay'
      @novel[crew['name']] = crew['id'] if crew['job'] == 'Novel'
      @music[crew['name']] = crew['id'] if crew['job'] == 'Original Music Composer'
    end
    @directors_count = @directors.size
    @writers_count = @writers.size
    @story_count = @story.size
    @screenplay_count = @screenplay.size
    @novel_count = @novel.size
    @music_count = @music.size
  end
  
end
