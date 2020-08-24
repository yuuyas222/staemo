require 'rails_helper'

RSpec.describe "Emotions", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/emotions/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/emotions/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/emotions/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/emotions/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/emotions/update"
      expect(response).to have_http_status(:success)
    end
  end
end
