class UsersController < ApplicationController
  
  def top
    @user = User.find(params[:user_id])
    @emotions = @user.emotions
  end

  def index
    if params[:tag_name]
      @users = User.tagged_with("#{params[:tag_name]}")
    end
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

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_top_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :favorite_team, :textbox, :tag_list, :profile_image)
  end

  

end
