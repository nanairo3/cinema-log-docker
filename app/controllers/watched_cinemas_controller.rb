class UsersController < ApplicationController
 before_action :authenticate_user!
  
  def create
    @watched_cinema = Watched_cinema.new(user_id: current_user.id, cinema_id: Cinema.find_by(movie_id: params[:id]))
    @watched_cinema.save
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    @watched_cinema = Watched_cinema.find_by(user_id: current_user.id, cinema_id: Cinema.find_by(movie_id: params[:id]))
    @watched_cinema.destroy
    redirect_back(fallback_location: root_path)
  end
  
end