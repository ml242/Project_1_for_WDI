class ClimbsController < ApplicationController
  def new
    # FIXME @user needs to be the user object
    @user = User.find(params[:user_id])
    @climb = Climb.new
    @ascends = Ascend.all
  end

  def show
  end

  def index
  end

  def create
  end


end