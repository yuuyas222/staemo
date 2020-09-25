class Gourmet < ApplicationRecord
    acts_as_taggable
    belongs_to :user
    validates :body, presence: true, length: { maximum: 140 }
    has_many :gourmet_images, dependent: :destroy
    accepts_attachments_for :gourmet_images, attachment: :image
end
