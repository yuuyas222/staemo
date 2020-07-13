class Emotion < ApplicationRecord
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :commnets, dependent: :destroy

end
