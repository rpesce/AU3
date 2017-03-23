class DropArticlesKeywordsTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :articles_keywords
  end
end
