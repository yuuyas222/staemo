class FrendshipsController < ApplicationController
  
  def follower
    @user = User.find_by(id: params[:user_id])
    @frends = @user.followers.all 
  end

  def following
    @user = User.find_by(id: params[:user_id])
    @frends = @user.followings.all 
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
