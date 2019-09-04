class SessionsController < ApplicationController
  before_action :forbid_login_user, {only: [:new, :create]}

  def new
  end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      flash[:notice] = "ログインしました"
      redirect_to root_url, notice: 'ログインしました'
    else
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'ログアウトしました'
  end

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
