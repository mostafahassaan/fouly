class AddSubprojectToImages < ActiveRecord::Migration
  def change
    add_reference :images, :subproject, index: true, foreign_key: true
  end
end
