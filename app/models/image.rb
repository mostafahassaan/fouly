class Image < ActiveRecord::Base

  has_attached_file :asset, styles: { small: "360x220#", medium: "530x310#", large: "1150x500#", square: "200x200#", small_rec: "250x270#" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method:
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }

end
