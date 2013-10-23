class AscendsController < ApplicationController
  def index
    @ascends = Ascend.all
  end
  def new
    @ascends = Ascend.new
  end
  def show
    @ascends = Ascend.find(params[:id])
  end
  def create
    @ascends = Ascend.create
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


