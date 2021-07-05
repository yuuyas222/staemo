class AddRoomNameToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :room_name, :string
  end
end
