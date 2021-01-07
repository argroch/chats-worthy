class Room < ApplicationRecord
	has_many :messages
	belongs_to :category
	belongs_to :user
end
