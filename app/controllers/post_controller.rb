class PostController < ApplicationController
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

  def post_params
    params.require(:post).permit(:content, :cinema_id)
  end
end
