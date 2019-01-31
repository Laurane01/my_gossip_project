class City < ApplicationRecord
	has_many :users
	has_many :gossips
	has_many :tags
end
