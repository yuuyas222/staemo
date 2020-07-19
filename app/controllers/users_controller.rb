class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @emotions = @user.emotions
  end

  def edit
    @user = User.find(params[:id])
    if @user.id == current_user
      render :edit
    else
      redirect_to 
    end
  end

  def confirm
    
  end

  def update
  end
end
