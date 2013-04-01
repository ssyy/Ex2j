class AddAttachmentFaceToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :face
    end
  end

  def self.down
    drop_attached_file :users, :face
  end
end
