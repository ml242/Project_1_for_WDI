class CragsController < ApplicationController
  def index
    @crag = Crag.all
  end
  def new
    @crag = Crag.new
  end
  def show
    @crag = Crags.find(params[:id])
  end
  def create
    @crag = Crag.create
  end
  def destroy
    @crag = Crag.delete
  end
  def edit
    @crag = Crag.find(params[:id])
  end
end