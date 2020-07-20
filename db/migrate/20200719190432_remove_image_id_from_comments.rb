class RemoveImageIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :image_id, :integer
  end
end
