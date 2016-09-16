class AddBigprojectToSubprojects < ActiveRecord::Migration
  def change
    add_column :subprojects, :bigProject, :boolean
  end
end
