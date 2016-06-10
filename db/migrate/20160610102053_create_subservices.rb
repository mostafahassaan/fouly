class CreateSubservices < ActiveRecord::Migration
  def change
    create_table :subservices do |t|
      t.string :title
      t.text :text
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
