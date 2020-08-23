class Comment < ApplicationRecord
  belongs_to :emotion
  belongs_to :user

  validates :body, presence: true, length: { maximum: 50 }
end
