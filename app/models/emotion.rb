class Emotion < ApplicationRecord
    acts_as_taggable
    
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :images, dependent: :destroy
    accepts_attachments_for :images, attachment: :image

    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end

  

end
