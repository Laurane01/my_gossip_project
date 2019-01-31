class Gossip < ApplicationRecord
	has_many :users
	has_many :tags, through: :appis
end
