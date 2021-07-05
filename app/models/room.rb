class Room < ApplicationRecord
    has_many :texts
    belongs_to :user

    validates :room_name, presence: true
end
