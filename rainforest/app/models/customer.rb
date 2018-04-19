class Customer < ApplicationRecord
	#has_and_belongs_to_many :products
	has_many :reviews
	has_many :products, through: :reviews

end
