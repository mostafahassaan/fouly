class AddTranslationToImports < ActiveRecord::Migration
    def up
      Import.create_translation_table! :title => :string, :text => :text
    end

    def down
      Import.drop_translation_table!
    end
end
