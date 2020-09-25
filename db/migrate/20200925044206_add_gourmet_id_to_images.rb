class AddGourmetIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :gourmet_id, :integer
  end
end
