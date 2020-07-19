class AddUserIdToFavorite < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :emotion_id, :integer
  end
end
