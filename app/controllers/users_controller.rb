class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end


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
