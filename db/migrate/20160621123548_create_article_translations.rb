class CreateArticleTranslations < ActiveRecord::Migration
  def up
    Article.create_translation_table! :title => :string, :text => :text, :summary => :text
  end

  def down
    Article.drop_translation_table!
  end
end
