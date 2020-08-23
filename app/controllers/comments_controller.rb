class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    emotion = Emotion.find(params[:emotion_id])
    comment = current_user.comments.new(comment_params)
    comment.emotion_id = emotion.id
    comment.score = Language.get_data(comment_params[:body])
    if comment.save
      redirect_to request.referer
    else
      render "emotions/show"
    end
  end

  def destroy
    Comment.find_by(id: params[:id], emotion_id: params[:emotion_id]).destroy
    redirect_to request.referer
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :emotion_id)
  end
end
