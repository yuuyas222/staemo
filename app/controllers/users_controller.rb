class UsersController < ApplicationController
  
  def index
  end

  def show
    @user = User.find(params[:id])
    @emotions = @user.emotions
  end

  def edit
    @user = User.find(params[:id])
    if @user.id == current_user.id
      render :edit
    else
      redirect_to root_path
    end
  end

  def confirm
    
  end

  def update
  end
end
