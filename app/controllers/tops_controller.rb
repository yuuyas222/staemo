class TopsController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:tag_name]
      @emotions = Emotion.tagged_with("#{params[:tag_name]}")
    else
      @emotions = Emotion.page(params[:page]).order(created_at: :desc)
    end
    if params[:tag_name]
      @gourmets = Gourmet.tagged_with("#{params[:tag_name]}")
    else
      @gourmets = Gourmet.page(params[:page]).order(created_at: :desc)
    end
  end
end
