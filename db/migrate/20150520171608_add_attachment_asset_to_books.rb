class AddAttachmentAssetToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :books, :asset
  end
end
