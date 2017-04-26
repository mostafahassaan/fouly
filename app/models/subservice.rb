class Subservice < ActiveRecord::Base
  has_many :points
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :service
  has_many :images

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true

  class Translation
    validates :title, presence: true
    validates :text, presence: true
  end
end
