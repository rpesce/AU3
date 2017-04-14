class Item < ApplicationRecord
	belongs_to :list
	belongs_to :user
	acts_as_votable
	default_scope { order(:cached_votes_score => :desc) } 



	validates :name, :image, :link, :description, :list_id, presence: true
	validates :name, :link, uniqueness: { case_sensitive: false }, on: :update
	validates :name, length: { minimum: 5, maximum: 100 }
	validates :description, length: { minimum: 100, maximum: 300 }
end