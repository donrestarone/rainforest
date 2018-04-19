class ReviewsController < ApplicationController

	def create
		#puts "Creating new review"
		@review = Review.new

		@review.review = params[:review][:review]
		@review.product_id = params[:product_id]
		 #check server log to make this clear
		 @review.customer_id = 1
		if @review.save
			redirect_to product_path(id: params[:product_id])
		# else
		#  redirect_to products_path
		end
	end


	def edit
		id = params[:id]
		@review = Review.find(id)
		@product = @review.product 
	end 
	
	def update
		id = params[:product_id]
		@review = Review.find(params[:id])

		@review.review = params[:review][:review]
		
		if @review.save
			redirect_to product_path(id: id)
		else
			render :index
		end
	end

	def destroy
		id = params[:product_id]
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to product_path(id: id)
	end
end
