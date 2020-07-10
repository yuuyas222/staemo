require 'rails_helper'

RSpec.describe "Emotions", type: :request do

  describe "投稿一覧の表示" do
    it "投稿一覧ページの表示がされている" do
      get "/emotions/index"
     expect(response.status).to eq 200
    end
  end

  describe "投稿の作成" do
    it "投稿が成功している" do
      get "/emotions/create"
     expect(response.status).to eq 200
    end
  end

  describe "投稿の削除" do
    it "投稿が削除されている" do
      get "/emotions/destroy"
     expect(response.status).to eq 200
    end
  end

  describe "投稿の詳細表示" do
    it "詳細表示に成功している" do
      get "/emotions/show"
     expect(response.status).to eq 200
    end
  end

  describe "投稿内容の更新" do
    it "投稿内容が更新されている" do
      get "/emotions/update"
     expect(response.status).to eq 200
    end
  end

end
