class TopsController < ApplicationController
  def index
     @emotions = Emotion.page(params[:page]).order(created_at: :desc)
  end
end
