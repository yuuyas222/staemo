class Emotion < ApplicationRecord
    acts_as_taggable
    
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :images, dependent: :destroy
    accepts_nested_attributes_for :images, allow_destroy: true

    mount_uploader :images, ImageUploader
    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end

end
