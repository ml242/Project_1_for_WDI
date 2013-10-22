class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  def authenticate
    if session[:used_id]
      @current_user = User.find(session[:user_id])
    end
  end

end
