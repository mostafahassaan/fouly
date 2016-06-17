class CreateSubprojects < ActiveRecord::Migration
  def change
    create_table :subprojects do |t|
      t.string :title
      t.text :text
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
