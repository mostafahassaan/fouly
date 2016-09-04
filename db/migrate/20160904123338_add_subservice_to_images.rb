class AddSubserviceToImages < ActiveRecord::Migration
  def change
    add_reference :images, :subservice, index: true, foreign_key: true
  end
end
