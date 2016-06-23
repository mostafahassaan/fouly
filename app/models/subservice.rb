class Subservice < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :service

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true
end
