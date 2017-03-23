class RenameJoinTableKeywordArticleToJoinTableKeywordArticles < ActiveRecord::Migration[5.0]
  def change
  	rename_table :join_table_keyword_article, :join_table_keyword_articles
  end
end
