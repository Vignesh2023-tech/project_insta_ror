class SessionController < ApplicationController

  def login
    render 'login'
  end

  def login_user
    @user = User.find_by(email: params[:email])
    if @user != nil && BCrypt::Password.new(@user.password_digest) == params[:password]
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Logged in successfully!'
    else
      flash.now[:alert] = 'Invalid email or password'
      render 'login'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out successfully!'
  end

end
