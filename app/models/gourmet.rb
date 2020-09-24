class Gourmet < ApplicationRecord
    acts_as_taggable
    belongs_to :user
    validates :body, presence: true, length: { maximum: 140 }

    
end
