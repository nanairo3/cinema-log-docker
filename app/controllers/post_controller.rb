class PostController < ApplicationController
  def show
    @cinema = Cinema.find(params[:id])
    @posts = Post.where(cinema_id: @cinema.id)
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
