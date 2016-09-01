class Game < ApplicationRecord
	has_many :reviews
	validates :title, presence: true,
										length: { minimum: 2}
end
