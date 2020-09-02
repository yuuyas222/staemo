require 'rails_helper'

RSpec.describe "Follower", type: :request do
  describe "フォロー機能について" do
    it "followerにする" do
      post "/users/:user_id/frendships"
      expect(response).to have_http_status(302)
    end
    it "followerを外す" do
      delete "/users/:user_id/frendships"
      expect(response).to have_http_status(302)
    end
  end
end
