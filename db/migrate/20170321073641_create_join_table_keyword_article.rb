class CreateJoinTableKeywordArticle < ActiveRecord::Migration[5.0]
  def change
    create_table :join_table_keyword_article do |t|
    	t.integer :keyword_id, null: false
    	t.integer :article_id, null: false

      t.timestamps
    end
  end
end
