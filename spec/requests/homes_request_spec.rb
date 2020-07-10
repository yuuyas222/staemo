require 'rails_helper'

RSpec.describe "Homes", type: :request do

  describe "aboutページを表示" do
    it "aboutページの表示が成功する" do
      get "/homes/about"
      expect(response.status).to eq 200
    end
  end

end
