class TopsController < ApplicationController
  def index
    if params[:q]
      @search = Emotion.ransack(params[:q])
      @emotions = @search.result.order(created_at: :desc)
    else
      @emotions = Emotion.all.order(created_at: :desc)
    end
  end
end
