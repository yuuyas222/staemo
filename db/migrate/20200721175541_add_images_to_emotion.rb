class AddImagesToEmotion < ActiveRecord::Migration[5.2]
  def change
    mount_uploaders :emotions, :images, :json
  end
end
