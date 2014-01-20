class AddAttachmentSpecToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :spec
    end
  end

  def self.down
    drop_attached_file :items, :spec
  end
end
