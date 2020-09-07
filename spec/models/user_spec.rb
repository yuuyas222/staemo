require 'rails_helper'

RSpec.describe User, type: :model do
  context "ユーザー情報登録が成功する" do
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
  context "ユーザー情報登録が失敗する" do
    let(:user){ User.new(params) }
    let(:params){ {name: "", email: "", introduction: nil} }
    before do
      user.save
    end
    it "名前が入力されてない" do
      expect(user.name).to eq("")
      expect(user.errors[:name]).to include("を入力してください")
    end
    it "名前が20文字以内に収まってない" do
      user = User.new(name: "a" * 21) 
      user.save
      expect(user).to be_invalid
      expect(user.errors[:name]).to include("は20文字以内で入力してください")
    end
    it "メールアドレスが入力されてない" do
      expect(user.name).to eq("")
      expect(user.errors[:email]).to include("を入力してください")
    end
  end
  context "ユーザー編集が成功する" do
    let(:user){ User.new(params) }
    let(:params){ {introduction: "紹介文が登録される"} }
    before do
      user.save
    end
    it "紹介文が編集できる" do
      expect(user.introduction).to eq("紹介文が登録される")
    end
  end
  
  it "紹介文を50文字以内で入力する"
end
