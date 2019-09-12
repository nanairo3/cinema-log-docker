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
  
  def show
    @movie = Movie.details(params[:id])
    if @movie["credits"]["cast"].count > 6
      @cast_range = 6
    else
      @cast_range = @movie["credits"]["cast"].count
    end
    @trailers = Movie.trailers(params[:id])

    @directors = {}
    @writers = {}
    @story = {}
    @screenplay = {}
    @novel = {}
    @music = {}
    @movie["credits"]["crew"].each do |crew|
      if crew["job"]=="Director" then @directors[crew["name"]] = crew["id"] end
      if crew["job"]=="Writer" then @writers[crew["name"]] = crew["id"] end
      if crew["job"]=="Story" then @story[crew["name"]] = crew["id"] end
      if crew["job"]=="Screenplay" then @screenplay[crew["name"]] = crew["id"] end
      if crew["job"]=="Novel" then @novel[crew["name"]] = crew["id"] end
      if crew["job"]=="Original Music Composer" then @music[crew["name"]] = crew["id"] end
    end
    @directors_count = @directors.size
    @writers_count = @writers.size
    @story_count = @story.size
    @screenplay_count = @screenplay.size
    @novel_count = @novel.size
    @music_count = @music.size


    # get current user's comment
    @current_user_comment = Comment.find_by(user_id: current_user.id, movie_id: @movie["id"]) if logged_in?
    # create new comment
    @comment = Comment.new if logged_in? && watched_check(@movie["id"])
    if Movie.exists?(@movie["id"])
      # find movie object from database
      @movie_db = Movie.find(@movie["id"])
      # paginate all of the movie's comments
      @comments = @movie_db.comments.paginate(page: params[:page])
    end
  end
  
end
