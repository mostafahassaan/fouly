class Subproject < ActiveRecord::Base
  belongs_to :project
  has_many :images
  
  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true
end
