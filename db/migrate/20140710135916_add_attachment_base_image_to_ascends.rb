class AddAttachmentBaseImageToAscends < ActiveRecord::Migration
  def self.up
    change_table :ascends do |t|
      t.attachment :base_image
    end
  end

  def self.down
    remove_attachment :ascends, :base_image
  end
end
