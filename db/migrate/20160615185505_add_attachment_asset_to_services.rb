class AddAttachmentAssetToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :services, :asset
  end
end
