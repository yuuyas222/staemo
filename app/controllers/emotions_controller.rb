class EmotionsController < ApplicationController
  def index
    @emotions = Emotion.all
  end

  def create
  end

  def destroy
  end

  def show
    @emotion = Emotion.find(params[:id])
    @emotion_comments = @emotion.comments.all
  end

  def update
  end
end
