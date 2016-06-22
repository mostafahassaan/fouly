class RemoveColumnsFromSubprojects < ActiveRecord::Migration
  def change
    remove_column :subprojects, :title, :string
    remove_column :subprojects, :text, :text
  end
end
