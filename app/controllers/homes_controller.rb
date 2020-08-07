class HomesController < ApplicationController
  def about
    if user_signed_in?
      redirect_to user_top_path(current_user)
    end
  end
    
end
