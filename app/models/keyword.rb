class Keyword < ApplicationRecord
	has_many :article_keywords 
	has_many :articles, through: :article_keywords, dependent: :destroy
end
