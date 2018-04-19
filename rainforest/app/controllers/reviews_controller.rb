class ReviewsController < ApplicationController
	# def index
	# 	@reviews = Review.all
	# end 

	def create
		#puts "Creating new review"
		@review = Review.new 

		@review.review = params[:review][:review]
		puts ".............................#{@review.review}"
		@review.product_id = params[:product_id]
		 #check server log to make this clear
		 @review.customer_id = 1
		puts ".............................#{@review.product_id}"
		if @review.save
			redirect_to product_path(id: params[:product_id])
		else 
		 redirect_to products_path
		end
	end
end
