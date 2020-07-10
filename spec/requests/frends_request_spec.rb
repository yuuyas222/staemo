require 'rails_helper'

RSpec.describe "Frends", type: :request do

  describe "フレンドの一覧を表示" do
    it "フレンドの一覧を表示できている" do
      get "/frends/index"
      expect(response.status).to eq 200
    end
  end

  describe "フレンドの詳細情報を表示" do
    it "フレンドの詳細情報を表示できる" do
      get "/frends/show"
      expect(response.status).to eq 200
    end
  end

end
