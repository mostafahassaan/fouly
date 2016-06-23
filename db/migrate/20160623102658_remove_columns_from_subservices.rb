class RemoveColumnsFromSubservices < ActiveRecord::Migration
  def change
    remove_column :subservices, :title, :string
    remove_column :subservices, :text, :text
  end
end
