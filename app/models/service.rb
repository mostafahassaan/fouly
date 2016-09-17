class Service < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  has_many :subservices
  has_many :points
  has_many :images

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true

  class Translation
    # define translation validations here
    validates :title, presence: true
    validates :text, presence: true
  end
  
  class Translation
    validates :title, presence: true
    validates :text, presence: true
  end

end
