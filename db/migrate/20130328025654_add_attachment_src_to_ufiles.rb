class AddAttachmentSrcToUfiles < ActiveRecord::Migration
  def self.up
    change_table :ufiles do |t|
      t.attachment :src
    end
  end

  def self.down
    drop_attached_file :ufiles, :src
  end
end
