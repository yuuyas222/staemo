class AddImageIdToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :image_id, :integer
    add_column :comments, :emotion_id, :integer
    add_column :comments, :body, :string
  end
end
