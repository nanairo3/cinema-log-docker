# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def new
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
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.cinema_id = params[:id]
    if @post.save
      flash[:notice] = '投稿を作成しました'
      redirect_to("/cinema_pages/#{Cinema.find(@post.cinema_id).movie_id}")
    else
      render('post/new')
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params_edit)
      redirect_to("/cinema_pages/#{Cinema.find(@post.cinema_id).movie_id}")
      flash[:notice] = '更新しました'
    else
      render('posts/edit')
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to("/cinema_pages/#{Cinema.find(@post.cinema_id).movie_id}")
    flash[:notice] = '削除しました'
  end

  def post_params
    params.require(:post).permit(:content, :cinema_id)
  end

  def post_params_edit
    params.require(:post).permit(:cinema_id, :content)
  end



  def authenticate_user_new
    if current_user.nil?
      flash[:notice] = 'ログインして投稿しませんか？'
      redirect_to('/login')
    end
  end
end
