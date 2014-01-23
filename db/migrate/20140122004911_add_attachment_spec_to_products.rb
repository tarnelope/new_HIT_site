class AddAttachmentSpecToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :spec
    end
  end

  def self.down
    drop_attached_file :products, :spec
  end
end
