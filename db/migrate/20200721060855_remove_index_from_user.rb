class RemoveIndexFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :index, :string
    remove_column :users, :deleted_at, :datetime
  end
end
