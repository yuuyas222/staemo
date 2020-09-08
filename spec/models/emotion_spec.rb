require 'rails_helper'

RSpec.describe Emotion, type: :model do
  context "投稿のバリデーション" do
    emotion = Emotion.new(body: "")
    it "空だと投稿できない" do
        expect(emotion).to be_invalid
        expect(emotion.errors[:body]).to include("を入力してください")
    end
  end
end
