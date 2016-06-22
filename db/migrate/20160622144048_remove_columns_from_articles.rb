class RemoveColumnsFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :title, :string
    remove_column :articles, :text, :text
    remove_column :articles, :summary, :text
  end
end
