class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
