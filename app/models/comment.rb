class Comment < ApplicationRecord
    belongs_to :emotion
    belongs_to :user
end
