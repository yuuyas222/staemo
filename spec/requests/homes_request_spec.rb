require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "ホーム画面について" do
    it "ホーム画面がroot_pathで表示される" do
      get "/"
      expect(response).to have_http_status(200)
    end
  end
end
