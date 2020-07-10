require 'rails_helper'

RSpec.describe "Favorites", type: :request do

  describe "いいね投稿一覧" do
    it "いいねしている投稿の一覧" do
      get "/favorites/index"
      expect(response.status).to eq 200
    end
  end

  describe "投稿にいいねできる" do
    it "いいねが成功する" do
      get "/favorites/create"
      expect(response.status).to eq 200
    end
  end

  describe "投稿のいいねを消す" do
    it "いいねを削除できる" do
      get "/favorites/destroy"
      expect(response.status).to eq 200
    end
  end

end
