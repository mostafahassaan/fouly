class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :text
      t.boolean :bigProject
      t.timestamps null: false
    end
  end
end
