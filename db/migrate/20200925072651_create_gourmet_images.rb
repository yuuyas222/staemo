class CreateGourmetImages < ActiveRecord::Migration[5.2]
  def change
    create_table :gourmet_images do |t|
      t.string :image_url
      t.string :image_id
      t.integer :gourmet_id

      t.timestamps
    end
  end
end
