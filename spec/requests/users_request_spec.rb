require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "利用しているユーザーの一覧" do
    it "ユーザー一覧が表示できる" do
      get "/users/index"
      expect(response.status).to eq 200
    end
  end

  describe "ユーザーの詳細表示" do
    it "ユーザーの詳細が表示できる" do
      get "/users/show"
      expect(response.status).to eq 200
    end
  end

  describe "ユーザーの編集" do
    it "編集ページが表示できる" do
      get "/users/edit"
      expect(response.status).to eq 200
    end
  end

  describe "退会確認画面" do
    it "退会確認画面が表示できる" do
      get "/users/confirm"
      expect(response.status).to eq 200
    end
  end

  describe "ユーザー情報の更新" do
    it "ユーザー情報の更新ができる" do
      get "/users/update"
      expect(response.status).to eq 200
    end
  end

end
