class Subservice < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :service
  has_many :images
  has_many :points

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true

    class Translation
      validates :title, presence: true
      validates :text, presence: true
    end
end
