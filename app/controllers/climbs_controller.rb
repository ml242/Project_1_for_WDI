class ClimbsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @climb = Climb.new
    @ascends = Ascend.all
  end

  def show
    @climb = Climb.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @climb = Climb.create(params[:climb])
    @user.climbs << @climb
    redirect_to(@user)
  end


  def edit
    @user = User.find(params[:user_id])
    @climb = Climb.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    c1 = Climb.find(params[:id])
    c1.update_attributes(params[:climb])
    redirect_to(@user)
  end
end