class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to articles_path
    else
    redirect_to login_path
    end
  end

  def destroy
    session.reset!
    redirect_to login_path
  end
end
