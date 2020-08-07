class FavoritesController < ApplicationController
  before_action :authenticate_user!
  

  def create
    @emotion = Emotion.find(params[:emotion_id])
    favorite = current_user.favorites.new(emotion_id: @emotion.id)
    favorite.save
  end

  def destroy
    @emotion = Emotion.find(params[:emotion_id])
    favorite = current_user.favorites.find_by(emotion_id: @emotion.id)
    favorite.destroy
  end
end
