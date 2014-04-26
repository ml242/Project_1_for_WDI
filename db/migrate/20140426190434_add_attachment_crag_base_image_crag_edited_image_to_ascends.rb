class AddAttachmentCragBaseImageCragEditedImageToAscends < ActiveRecord::Migration
  def self.up
    change_table :ascends do |t|
      t.attachment :crag_base_image
      t.attachment :crag_edited_image
    end
  end

  def self.down
    drop_attached_file :ascends, :crag_base_image
    drop_attached_file :ascends, :crag_edited_image
  end
end
