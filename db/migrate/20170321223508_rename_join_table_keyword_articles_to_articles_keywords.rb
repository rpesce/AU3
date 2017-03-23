class RenameJoinTableKeywordArticlesToArticlesKeywords < ActiveRecord::Migration[5.0]
  def change
  	rename_table :join_table_keyword_articles, :articles_keywords
  end
end
