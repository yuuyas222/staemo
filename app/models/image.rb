class Image < ApplicationRecord
  belongs_to :emotion
  attachment :image
end
