class ArticleKeyword < ApplicationRecord
	belongs_to :article
	belongs_to :keyword
end