class CragsController < ApplicationController
  def index
    @crags = Crag.all
  end
  def new
    @crags = Crag.new
  end
  def show
    @crags = Crag.find(params[:id])
    @ascends
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