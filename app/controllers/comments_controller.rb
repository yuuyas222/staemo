class CommentsController < ApplicationController
  def create
    emotion = Emotion.find(params[:emotion_id])
    comment = current_user.comments.new(comment_params)
    comment.emotion_id = emotion.id
    if comment.save
      redirect_to request.referer
    else
      render "emotions/show"
    end
  end

  def destroy
    Comment.find_by(id: params[:id],emotion_id: params[:emotion_id]).destroy
    redirect_to request.referer
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
