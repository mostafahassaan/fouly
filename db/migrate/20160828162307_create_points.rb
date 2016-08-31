class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
