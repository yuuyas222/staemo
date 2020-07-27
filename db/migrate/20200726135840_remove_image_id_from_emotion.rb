class RemoveImageIdFromEmotion < ActiveRecord::Migration[5.2]
  def change
    remove_column :emotions, :image_id, :integer
    remove_column :emotions, :images, :json
  end
end
