class Article < ActiveRecord::Base
  validates :title, presence: true
  validates :summary, presence: true
  validates :text, presence: true

end