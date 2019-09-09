class UsersController < ApplicationController

  def index
    @users = User.all
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     redirect_to user_url(@user), nitice: "ユーザ「#{@user.name}」を登録しました"
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @user = User.new
  # end


  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy
  #   redirect_to user_url, notice: "ユーザ「#{@user.name}」を削除しましたしました"
  # end

  def ensure_correct_user
    @user = User.find(params[:id])
    if current_user.id != @user.id
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
