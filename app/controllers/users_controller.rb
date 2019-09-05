class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:index, :edit, :update, :destroy]}
  before_action :ensure_correct_user, {only: [:edit, :update, :destroy]}

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_url(@user), nitice: "ユーザ「#{@user.name}」を登録しました"
    else
      render :new
    end
  end

  def edit
    @user = User.new
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to admin_user_url(@user), notice: "ユーザ「#{@user.name}」を更新しました"
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_user_url, notice: "ユーザ「#{@user.name}」を削除しましたしました"
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    if !(current_user.admin?) && current_user.id != @user.id
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
    end

end
