class ProductsController < ApplicationController

	def index
		@title = "All Products"
		@products = Product.all
	end

	def create
		@title = 'Create New Product'

		@product = Product.new
		@product.name = params[:product][:name]
		@product.description = params[:product][:description]
		@product.price_in_cents = params[:product][:price_in_cents]

		if @product.save
			#redirect_to products_path
			redirect_to product_path(@product)

		else
			render :new
		end
	end

	def new
		@title = 'Create new Product'
		@product = Product.new
	end

	def show
		@product = Product.find(params[:id])
		@product_reviews = @product.reviews
		@title = @product.name
		@review = Review.new
		#review instance is being made here

	end

	def edit
		id = params[:id]
		@product = Product.find(id)
	end
	
	def update
		@product = Product.find(params[:id])

		@product.name = params[:product][:name]
		@product.description = params[:product][:description]
		@product.price_in_cents = params[:product][:price_in_cents]

		if @product.save
			redirect_to product_path
		else
			render :index
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to products_path
	end

end
