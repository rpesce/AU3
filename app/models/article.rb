class Article < ApplicationRecord
	has_and_belongs_to_many :keywords
end
