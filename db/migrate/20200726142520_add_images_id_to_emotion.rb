class AddImagesIdToEmotion < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :images_id, :string
  end
end
