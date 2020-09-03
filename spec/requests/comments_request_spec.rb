require 'rails_helper'

RSpec.describe "コメント投稿について", type: :request do
  describe "コメント投稿" do
    it "投稿に成功する" do
      post "/emotions/:emotion_id/comments"
      expect(response).to have_http_status(302)
    end
  end

  # describe "GET /destroy" do
  #   it "投稿削除する" do
  #     get "/comments/destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end
end
