class AddImageIdToImage < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :image_id, :integer
    add_column :images, :emotion_id, :integer
    add_column :images, :comment_id, :integer
  end
end
