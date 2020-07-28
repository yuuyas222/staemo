class RemoveImageIdFromImage < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :image_id, :integer
  end
end
