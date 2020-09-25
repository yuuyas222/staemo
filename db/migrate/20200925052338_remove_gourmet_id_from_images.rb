class RemoveGourmetIdFromImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :images, :gourmet_id, :integer
  end
end
