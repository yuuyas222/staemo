require 'rails_helper'

RSpec.describe Comment, type: :model do
    context "コメントのバリデーション" do
        comment = Comment.new(body: "")
        it "空だと投稿できない" do
            expect(comment).to be_invalid
            expect(comment.errors[:body]).to include("を入力してください")
        end
      end
end
