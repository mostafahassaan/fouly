class AddServiceToImages < ActiveRecord::Migration
  def change
    add_reference :images, :service, index: true, foreign_key: true
  end
end
