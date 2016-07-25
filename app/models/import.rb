class Import < ActiveRecord::Base

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true
  
end
