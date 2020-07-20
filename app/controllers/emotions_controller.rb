class EmotionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @emotions = Emotion.all
  end

  def create
    emotion = Emotion.new(emotion_params)
    emotion.user_id = current_user.id
    emotion.save
    redirect_to user_path(current_user)
  end

  def new
    @emotion = Emotion.new
  end

  def destroy
  end

  def show
    # @user = User.find(params[:id])
    @user = current_user
    @emotion = Emotion.find(params[:id])
    @comment = Comment.new
    @emotion_comments = @emotion.comments.all
  end

  def update
  end

private
  def emotion_params
    params.require(:emotion).permit(:body)
  end
end
