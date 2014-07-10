class AddAttachmentBaseAscendImageToAscends < ActiveRecord::Migration
  def self.up
    change_table :ascends do |t|
      t.attachment :base_ascend_image
    end
  end

  def self.down
    remove_attachment :ascends, :base_ascend_image
  end
end
