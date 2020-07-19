class Emotion < ApplicationRecord
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :commnets, dependent: :destroy

    def favirited_by(current_user)
        favorites.where(user_id: current_user.id).exit
    end

end
