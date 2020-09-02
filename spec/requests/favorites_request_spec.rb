require 'rails_helper'

RSpec.describe "Favorites", type: :request do
  
  describe "いいね機能について" do
    it "いいねできる" do
      post "/emotions/:emotion_id/favorites"
      expect(response).to have_http_status(302)
    end
    it "いいねを取り消せる" do
      delete "/emotions/:emotion_id/favorites"
      expect(response).to have_http_status(302)
    end
  end
end
