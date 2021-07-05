class AddUserIdToText < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :user_id, :integer
    add_column :texts, :room_id, :integer
  end
end
