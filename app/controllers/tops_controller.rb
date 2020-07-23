class TopsController < ApplicationController
  def index
    @emotions = Emotion.all
  end
end
