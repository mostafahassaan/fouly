class AddSubserviceToPoints < ActiveRecord::Migration
  def change
    add_reference :points, :subservice, index: true, foreign_key: true
  end
end
