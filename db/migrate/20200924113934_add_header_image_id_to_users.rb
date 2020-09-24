class AddHeaderImageIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :header_image_id, :string
  end
end
