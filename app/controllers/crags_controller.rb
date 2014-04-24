class CragsController < ApplicationController
  

  def index
    @crags = Crag.all
    @hash = Gmaps4rails.build_markers(@crags) do |crag, marker|
      marker.lat crag.latitude
      marker.lng crag.longitude
      marker.infowindow crag.name
    end
    if @current_user
      @user_hash = Gmaps4rails.build_markers(@current_user) do |user, marker|
        marker.lat user.latitude
        marker.lng user.longitude
        marker.infowindow user.name
      end
      @hash.push(@user_hash[0])
    end
  end


  def new
    @crag = Crag.new
  end
  def show
    @crag = Crag.find(params[:id])
    @ascends = Ascend.where(crag_id: @crag.id)
  end
  def create
    @crags = Crag.create
  end
  def destroy
    @crags = Crag.delete
  end
  def edit
    @crags = Crag.find(params[:id])
  end
end