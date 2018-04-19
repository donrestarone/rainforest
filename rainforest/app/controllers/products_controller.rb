class ProductsController < ApplicationController
	
	def index 
		@title = "All Products"
		@products = Product.all
	end 

	def show 
		@product = Product.find(params[:id])
		@title = @product.name
	end 

end
