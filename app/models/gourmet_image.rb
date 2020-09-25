class GourmetImage < ApplicationRecord
    belongs_to :gourmet
    attachment :image
end
