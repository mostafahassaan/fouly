class RemoveColumnsFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :title, :string
    remove_column :projects, :text, :text
  end
end
