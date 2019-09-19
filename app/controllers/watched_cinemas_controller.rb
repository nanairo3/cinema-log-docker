class WatchedCinemasController < ApplicationController
 before_action :authenticate_user!
  
  def create
    if Cinema.find_by(movie_id: params[:id]).nil?
      @movie = Movie.details(params[:id])
      @cinema = Cinema.new
      @cinema.movie_id = @movie["id"]
      @cinema.title = @movie["title"]
      @cinema.image = "https://image.tmdb.org/t/p/original#{@movie["poster_path"]}"
      @cinema.save
    else
      @cinema = Cinema.find_by(movie_id: params[:id])
    end
    
    @watched_cinema = WatchedCinema.new(user_id: current_user.id, cinema_id: Cinema.find_by(movie_id: params[:id]).id)
    @watched_cinema.save
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    @watched_cinema = WatchedCinema.find_by(user_id: current_user.id, cinema_id: Cinema.find_by(movie_id: params[:id]).id)
    @watched_cinema.destroy
    redirect_back(fallback_location: root_path)
  end
  
end