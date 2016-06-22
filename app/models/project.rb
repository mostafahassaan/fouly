class Project < ActiveRecord::Base
  has_many :subprojects

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true

  has_attached_file :asset
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method:
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }
end
