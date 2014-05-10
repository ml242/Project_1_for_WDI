class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_user, :weatherize

  private

  def get_user
    @current_user = User.where(id: session[:user_id]).first if session[:user_id]
  end

  def weatherize
  	@weather = Weather.first
  end

  def crag_image
    if @ascends.crag_base_image_file_name == nil
      @crag_image = []
    end
  end

  def authenticate  
  	if session[:user_id]
  		@current_user = User.find(session[:user_id])
  	end
  end

end
