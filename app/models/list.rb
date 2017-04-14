	class List < ApplicationRecord
	has_many :items
	belongs_to :user
	has_one :welcome


	validates :name, presence: true
	validates :name, uniqueness: { case_sensitive: false }, on: :update
end
