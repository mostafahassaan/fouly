class Subservice < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :service
end
