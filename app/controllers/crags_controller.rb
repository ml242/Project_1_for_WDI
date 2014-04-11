class CragsController < ApplicationController
  def index
    @crags = Crag.all
  end
  def new
    @crags = Crag.new
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