class UsersController < ApplicationController
  before_action :ensure_correct_user, only: [:edit, :update, :destroy]

  def top
    @user = User.find(params[:user_id])
    @emotions = @user.emotions.page(params[:page]).order(created_at: :desc)
  end

  def index
    if params[:tag_name]
      @users = User.tagged_with("#{params[:tag_name]}")
    end
  end

  def favorite
    @user = User.find_by(id: params[:user_id])
    @favorites = @user.favorites.all
  end

  def show
    @user = User.find(params[:id])
    @emotions = @user.emotions.page(params[:page]).order(created_at: :desc)
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
    @users = User.order("RANDOM()").limit(3)
  end

  def destroy
    @user = current_user
    @user.destroy
    flash[:notice] = "退会が完了しました。"
    redirect_to root_path
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "編集が完了しました。"
      redirect_to user_top_path(current_user)
    else
      render "edit"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :favorite_team, :textbox, :tag_list, :profile_image)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_top_path
    end
  end

  

end
