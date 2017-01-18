class AddAttachmentAssetToSubprojects < ActiveRecord::Migration
  def self.up
    change_table :subprojects do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :subprojects, :asset
  end
end
