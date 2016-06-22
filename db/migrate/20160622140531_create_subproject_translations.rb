class CreateSubprojectTranslations < ActiveRecord::Migration
  def up
    Subproject.create_translation_table! :title => :string, :text => :text
  end

  def down
    Subproject.drop_translation_table!
  end
end
