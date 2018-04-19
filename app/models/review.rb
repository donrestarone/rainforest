class Review < ApplicationRecord
	belongs_to :customer
	belongs_to :product

	validates :review, presence: true, length: {in: 4..50}
end
