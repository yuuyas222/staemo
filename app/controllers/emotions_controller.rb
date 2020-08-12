class EmotionsController < ApplicationController
  before_action :authenticate_user!


  def user_index
    if params[:tag_name]
      @emotions = Emotion.tagged_with("#{params[:tag_name]}")
    else  
      @user = User.find_by(id: params[:user_id])
      @emotions = @user.emotions.all.order(created_at: :desc)
    end
  end

  def create
    @emotion = Emotion.new(emotion_params)
    @emotion.user_id = current_user.id
    @emotion.score = Language.get_data(emotion_params[:body])
    if @emotion.save
      flash[:notice] = "投稿が完了しました。"
      redirect_to user_top_path(current_user)
    else
      render "new"
    end
  end

  def new
    @emotion = Emotion.new
    @emotion.images.new
  end


  def show
    @emotion = Emotion.find(params[:id])
    @user = User.find_by(id: @emotion.user_id)
    @comment = Comment.new
    @emotion_comments = @emotion.comments.all.order(created_at: :desc)
  end


private
  def emotion_params
    params.require(:emotion).permit(:body, :tag_list, images_images: [])
  end

end
