class CreateServiceTranslations < ActiveRecord::Migration
  def up
    Service.create_translation_table! :title => :string, :text => :text
  end

  def down
    Service.drop_translation_table!
  end
end
