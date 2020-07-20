class FavoritesController < ApplicationController
  
  def index
  end

  def create
    @emotion = Emotion.find(params[:emotion_id])
    favorite = current_user.favorites.new(emotion_id: @emotion.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    @emotion = Emotion.find(params[:emotion_id])
    favorite = current_user.favorites.find_by(emotion_id: @emotion.id)
    favorite.destroy
    redirect_to request.referer
  end
end
