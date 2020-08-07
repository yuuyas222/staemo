class TopsController < ApplicationController
  before_action :authenticate_user!
  def index
     @emotions = Emotion.page(params[:page]).order(created_at: :desc)
  end
end
