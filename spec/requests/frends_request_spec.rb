require 'rails_helper'

RSpec.describe "Frends", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/frends/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/frends/show"
      expect(response).to have_http_status(:success)
    end
  end

end
