class SessionController < ApplicationController
  def new
  end
  def create
    email = params[:email]
    password = params[:password]
    user = User.where(email: email).first
    if user && user.authenticate(password)
      session[:user_id] = user.id
      # redirect_to("/users/#{user.id}")
      redirect_to('/users')
    else
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to('/')
  end
end
