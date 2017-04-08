class Keyword < ApplicationRecord
	has_many :article_keywords 
	has_many :articles, through: :article_keywords, dependent: :destroy
	belongs_to :user

	before_save { self.name = name.titleize }

	validates :name, presence: true,
					uniqueness: { case_sensitive: false },
					length: { minimum: 4, maximum: 10 }
end
