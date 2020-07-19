class AddStatusToFrendship < ActiveRecord::Migration[5.2]
  def change
    add_column :frendships, :status, :boolean
    add_column :frendships, :following_id, :integer
    add_column :frendships, :follower_id, :integer
  end
end
