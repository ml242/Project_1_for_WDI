class AscendsController < ActionController::Base
  def new
    @ascend = Ascend.new
  end
  def show
    @ascend = Ascend.find(params[:id])
  end
  def create
    @ascend = Ascend.create
  end
  def edit
    @ascend = Ascend.find params[:id]
  end
  def update
    ascend = Ascend.find(params[:id]).update_attributes params[:ascend]
    redirect_to "/users/#{params[:user_id]}/ascends/#{params[:id]}"
  end
  def destroy
    Ascend.find(params[:id]).destroy
    session[:user_id] = nil
    redirect_to "/#{params[:user_id]}"
  end
end


