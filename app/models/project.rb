class Project < ActiveRecord::Base
  has_many :subprojects

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true

  class Translation
    # define translation validations here
    validates :title, presence: true
    validates :text, presence: true
  end
  
  has_attached_file :asset, styles: { small: "360x220#", medium: "530x310#", large: "1150x500#" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method:
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }
end
