class Article < ApplicationRecord
	has_many :article_keywords
	has_many :keywords, through: :article_keywords
end
