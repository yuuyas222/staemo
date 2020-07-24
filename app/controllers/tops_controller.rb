class TopsController < ApplicationController
  def index
    @emotions = Emotion.all.order(created_at: :desc)
  end
end
