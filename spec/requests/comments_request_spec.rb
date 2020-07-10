require 'rails_helper'

RSpec.describe "Comments", type: :request do

  describe "投稿へのコメント投稿" do
    it "投稿がされている" do
      get "/comments/create"
      expect(response.status).to eq 200
    end
  end

  describe "投稿の削除" do
    it "投稿が削除されている" do
      get "/comments/destroy"
      expect(response.status).to eq 200
    end
  end

end
