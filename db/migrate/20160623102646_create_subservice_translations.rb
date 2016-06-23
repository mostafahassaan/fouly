class CreateSubserviceTranslations < ActiveRecord::Migration
  def up
    Subservice.create_translation_table! :title => :string, :text => :text
  end

  def down
    Subservice.drop_translation_table!
  end
end
