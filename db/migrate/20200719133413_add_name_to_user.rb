class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :profile_image_url, :string
    add_column :users, :favorite_team, :integer
    add_column :users, :introduction, :text
    add_column :users, :textbox, :string
    add_column :users, :deleted_at, :datetime
    add_column :users, :index, :string
  end
end
