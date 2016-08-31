class AddTranslationToPoints < ActiveRecord::Migration
    def up
      Point.create_translation_table! :text => :text
    end

    def down
      Point.drop_translation_table!
    end
end
