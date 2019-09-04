class Admin::UsersController < ApplicationController
  before_action :reqire_admin
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_url(@user), nitice: "ユーザ「#{@user.name}」を登録しました"
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
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_user_url, notice: "ユーザ「#{@user.name}」を削除しましたしました"
  end

  private
    
    def user_params
      params.require(:user).permit(:name, :email, :admin, :password, :password_confirmation)
    end
    
    def reqire_admin
      redirect_to root_url unless current_user.admin?
    end

end
