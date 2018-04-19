class Product < ApplicationRecord
	#has_and_belongs_to_many :customers
	# has_many :customers #, through: :customer
	has_many :reviews #, :through => :customers
	has_many :customers, through: :reviews

end
