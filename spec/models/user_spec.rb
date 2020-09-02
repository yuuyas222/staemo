require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー情報について" do
    let(:user){ User.new(params) }
    let(:params){ {name: "テスト太郎", email: "test@test", introduction: nil} }
    before do
      user.save
    end
    it "新規登録ができている" do
      expect(user.name).to eq("テスト太郎")
      expect(user.email).to eq("test@test")
    end
  end
end
