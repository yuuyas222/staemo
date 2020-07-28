class AddUserIdToEmotion < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :user_id, :integer
    add_column :emotions, :image_id, :integer
    add_column :emotions, :body, :string
  end
end
