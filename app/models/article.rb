class Article < ApplicationRecord
	belongs_to :user
	has_many :article_keywords
	has_many :keywords, through: :article_keywords
	before_save { self.title = title.capitalize }
	acts_as_votable

	validates :link_source, :title, :description, :image_link, :keyword_ids, :user_id, presence: true
	validates :link_source, :title, uniqueness: { case_sensitive: false }, on: :update
	validates :title, length: { minimum: 5, maximum: 100 }
	validates :description, length: { minimum: 100, maximum: 300 }
	
end