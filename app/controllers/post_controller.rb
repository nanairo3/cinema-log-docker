class PostController < ApplicationController
  before_action :authenticate_user, {only: [:new, :create, :edit,:update, :destroy]}
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}

  def show
    @cinema = Cinema.find(params[:id])
    @posts = Post.where(cinema_id: @cinema.id)
  end

  def new
    @cinema = Cinema.find(params[:id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.cinema_id = params[:id]
    @post.user_id = current_user.id
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to post_path
    else
      render('post/new')
    end
  end

  def edit
  end

  def destroy
  end

  def ensure_correct_user
    @post = Post.find_by(id: params[:id])
    if current_user.id != @post.user_id || current_user.admin!
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

  def post_params
    params.require(:post).permit(:content, :cinema_id)
  end
end
