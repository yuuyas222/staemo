class AddImagesIdToGourmet < ActiveRecord::Migration[5.2]
  def change
    add_column :gourmets, :images_id, :string
  end
end
