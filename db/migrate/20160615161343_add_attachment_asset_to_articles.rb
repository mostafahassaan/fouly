class AddAttachmentAssetToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :articles, :asset
  end
end
