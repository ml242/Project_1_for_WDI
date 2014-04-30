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
      redirect_to :back
    else
      # go to users/new.html.erb and just display that page.
      # in this action
      render :new
    end
  end

  def show
    # FIXME use current_user
    @user = User.find(params[:id])
  end

  def edit
    # FIXME use current_user
    @user = User.find(params[:id])
  end

  def update
    # FIXME use current_user
    user = User.find(params[:id])
    user.update_attributes(params[:user])
    respond_to do |format|
      if user.update_attributes(params[:user])
        format.json { render json: user }
      else
        format.json { render json: user.errors, status: unprocessable_entity }
      end
    end
    # redirect_to user_path
  end
end
