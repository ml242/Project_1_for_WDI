class UsersController < ApplicationController
  def index
    @users = User.all
    @ascends = Ascend.all
  end
  def new
    # render users/new signup form
    @user = User.new
  end
  # POST /users
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(login_path)
    else
      # go to users/new.html.erb and just display that page.
      # in this action
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to(@user)
  end
end
