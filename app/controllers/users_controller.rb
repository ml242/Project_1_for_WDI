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
      redirect_to :crags
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
    # FIXME use current_user
    @user = User.find(params[:id])
  end

  def update
    user = @current_user
    # user.update_attributes(params[:user])
    respond_to do |format|
      if user.update_attributes(params[:user])
        format.json { render json: user }
        format.html {redirect_to user_path}      
      else
        format.html { render action: "edit" }
        format.json { render json: user.errors, status: unprocessable_entity }
      end
    end
    # redirect_to user_path
  end
end
