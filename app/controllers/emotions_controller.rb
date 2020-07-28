class EmotionsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:destroy]


  def index
    if params[:tag_name]
      @emotions = Emotion.tagged_with("#{params[:tag_name]}")
    else  
      @user = User.find(params[:id])
      @emotions = @user.emotions.all.order(created_at: :desc)
    end
  end

  def create
    emotion = Emotion.new(emotion_params)
    emotion.user_id = current_user.id
    emotion.save
    redirect_to user_top_path(current_user)
  end

  def new
    @emotion = Emotion.new
    @emotion.images.new
  end

  def destroy
  end

  def show
    @emotion = Emotion.find(params[:id])
    @user = User.find_by(id: @emotion.user_id)
    @comment = Comment.new
    @emotion_comments = @emotion.comments.all.order(created_at: :desc)
  end

  def update
  end

private
  def emotion_params
    params.require(:emotion).permit(:body, :tag_list, images_images: [])
  end

  def ensure_correct_user
    @emotion = Emotion.find(params[:id])
    unless @emotion.user == current_user
      redirect_to user_top_path
    end
  end
end
