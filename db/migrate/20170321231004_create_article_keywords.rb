class CreateArticleKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :article_keywords do |t|
    	t.integer :article_id
    	t.integer :keyword_id

    	t.timestamps
    end
  end
end
