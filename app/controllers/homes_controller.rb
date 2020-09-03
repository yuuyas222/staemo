class HomesController < ApplicationController
  def about
    if user_signed_in?
      redirect_to user_top_path(current_user)
    end
  end

  def new_guest
    user = User.find_or_create_by!(name: "ゲスト１", email: "guest@example.com") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    flash[:notice] = "ゲストユーザーとしてログインしました"
    redirect_to user_top_path(current_user)
  end
end
