require 'rails_helper'

RSpec.describe "Tops", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/tops/index"
      expect(response).to have_http_status(:success)
    end
  end
end
