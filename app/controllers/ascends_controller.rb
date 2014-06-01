class AscendsController < ApplicationController
  
  respond_to :html, :xml, :json
  respond_to :js, :only => [:create, :update, :destroy]
  

  def index
    @ascends = Ascend.all
  end
  def new
    @ascend = Ascend.new
    @crags = Crag.all
  end
  def show
    @ascend = Ascend.find(params[:id])
    @climbs = @ascend.climbs
    # @climbs.stars = @climbs.stars || []
    @users = User.all
  end
  def create
    @ascend = Ascend.create(params[:ascend])
    @climb = Climb.create(user_id: @current_user.id, ascend_id: @ascend.id)
    redirect_to("/ascends/#{@ascend.id}/edit")
  end
  def edit
    @ascend = Ascend.find(params[:id])
  end
  def update
    @ascend = Ascend.find(params[:id])
    respond_with do |format|
      format.html{  @ascend.update_attributes params[:ascend]
        redirect_to "/users/#{@current_user.id}/climbs/"
      }
    end
    # ascend = Ascend.find(params[:id]).update_attributes params[:ascend]
    # TODO do i have the user_id for this route?
  end
  def destroy
    Ascend.find(params[:id]).destroy
    session[:user_id] = nil
    redirect_to "/#{params[:user_id]}"
  end
end


