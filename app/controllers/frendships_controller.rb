class FrendshipsController < ApplicationController
  
  def index
    @user = current_user
    @frends = @user.follwer.all 
  end

  def show
  end

  def create
    follow = current_user.active_relationships.new(follower_id: params[:user_id])
    follow.save
    redirect_to request.referer
  end

  def destroy
    follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    follow.destroy
    redirect_to request.referer
  end

end
