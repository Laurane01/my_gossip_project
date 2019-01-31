class Tag < ApplicationRecord
	has_many :users
	has_many :gossips, through: :appis
end
