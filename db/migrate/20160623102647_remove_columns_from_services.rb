class RemoveColumnsFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :title, :string
    remove_column :services, :text, :text
  end
end
