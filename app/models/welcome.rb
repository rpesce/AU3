class Welcome < ApplicationRecord
	has_many :articles
	has_many :lists

end