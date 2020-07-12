class CreateFrendships < ActiveRecord::Migration[5.2]
  def change
    create_table :frendships do |t|
      t.string :Emotion

      t.timestamps
    end
  end
end
