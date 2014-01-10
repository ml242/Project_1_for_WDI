class UsersController < ApplicationController
  before_filter :authenticate
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
      session[:user_id] = @user.id
      redirect_to('/users')
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
    # @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to(@user)
  end


  def authenticate
    if session[:used_id]
      @current_user = User.find(session[:user_id])
    end
  end
end
