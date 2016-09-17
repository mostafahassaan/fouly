class Point < ActiveRecord::Base

  translates :text
  accepts_nested_attributes_for :translations, allow_destroy: true

  class Translation
    # define translation validations here
    validates :text, presence: true
  end
end
