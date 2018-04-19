class Product < ApplicationRecord
	has_many :reviews 
	has_many :customers, through: :reviews

	validates :name, presence: true, length: {in: 4..50}
	validates :description, presence: true
	validates :price_in_cents, numericality: {only_integer: true}

end
