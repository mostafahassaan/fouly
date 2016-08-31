class Point < ActiveRecord::Base

  translates :text
  accepts_nested_attributes_for :translations, allow_destroy: true
end
