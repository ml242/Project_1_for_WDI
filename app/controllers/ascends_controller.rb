class AscendsController < ApplicationController
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
    if remotipart_submitted?
      respond_to do |format|
        if @ascend.save
          format.js
        end
      end
    end
    @ascend = Ascend.create(params[:ascend])
    @climb = Climb.create(user_id: @current_user.id, ascend_id: @ascend.id)
    redirect_to("/users/#{@current_user.id}/climbs/")
  end
  def edit
    @ascends = Ascend.find params[:id]
  end
  def update
    ascend = Ascend.find(params[:id]).update_attributes params[:ascend]
    # TODO do i have the user_id for this route?
    redirect_to "/users/#{params[:user_id]}/ascends/#{params[:id]}"
  end
  def destroy
    Ascend.find(params[:id]).destroy
    session[:user_id] = nil
    redirect_to "/#{params[:user_id]}"
  end
end


