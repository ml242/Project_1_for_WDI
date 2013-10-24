class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_user

  private
  def get_user
    @current_user = User.where(id: session[:user_id]).first if session[:user_id]
  end

end
