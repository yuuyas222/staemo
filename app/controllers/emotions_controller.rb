class EmotionsController < ApplicationController
  def index
  end

  def create
  end

  def destroy
  end

  def show
    @emotion = Emotion.find(params[:id])
    @emotion_comments = @emotion.commens.all
  end

  def update
  end
end
