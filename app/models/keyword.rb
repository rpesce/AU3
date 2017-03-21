class Keyword < ApplicationRecord
	has_and_belongs_to_many :articles, dependent: :destroy
end
