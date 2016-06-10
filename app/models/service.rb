class Service < ActiveRecord::Base
  validates :title, presence: true
  validates :text, presence: true
  has_many :subservices

end
