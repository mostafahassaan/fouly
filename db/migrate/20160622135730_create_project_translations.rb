class CreateProjectTranslations < ActiveRecord::Migration
  def up
    Project.create_translation_table! :title => :string, :text => :text
  end

  def down
    Project.drop_translation_table!
  end
end
