class ClimbsController < ApplicationController
  def new
    @user = params[:user_id]
    @climb = Climb.new
    @ascends = Ascend.all
    @crags = Crag.all
  end

  def show
  end

  def index
  end

  def create
  end


end