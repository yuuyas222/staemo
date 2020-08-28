require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー情報について" do
    let(:user){ User.new(params) }
    let(:params){ {name: current_user.name, email: current_user.email } }
    it "新規登録ができている" do
      expect(user).to be_vaild
    end
  end
end
