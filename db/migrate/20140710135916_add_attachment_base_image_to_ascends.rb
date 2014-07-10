class AddAttachmentBaseImageToAscends < ActiveRecord::Migration
  def self.up
    add_attachment :ascends, :base_image
  end

  def self.down
    remove_attachment :ascends, :base_image
  end
end
