class Import < ActiveRecord::Base

  translates :title, :text
  accepts_nested_attributes_for :translations, allow_destroy: true

  class Translation
    # define translation validations here
    validates :title, presence: true
    validates :text, presence: true
  end
end
