class AddUserIdToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :user_id, :integer
  end
end
