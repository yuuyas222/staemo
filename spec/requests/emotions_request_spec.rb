require 'rails_helper'

RSpec.describe "Emotions", type: :request do
  describe "新規投稿画面について" do
    it "投稿画面に飛べる" do
      get "/emotions/new"
      expect(response).to have_http_status(302)
    end

    it "投稿に成功する" do
      post "/emotions"
      expect(response).to have_http_status(302)
    end
  end

  describe "投稿の詳細" do
    it "投稿詳細を表示できる" do
      get "/emotions/show"
      expect(response).to have_http_status(302)
    end
  end

  
end
