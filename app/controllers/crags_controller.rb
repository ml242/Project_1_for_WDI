class CragsController < ApplicationController
  

  def index
    @crags = Crag.all
    @hash = Gmaps4rails.build_markers(@crags) do |crag, marker|
      marker.lat crag.latitude
      marker.lng crag.longitude
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