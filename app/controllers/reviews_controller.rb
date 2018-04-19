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
		else
			flash[:warning] = @review.errors.full_messages
		 	redirect_to product_path(id: params[:product_id])
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
		@product = Product.find(params[:product_id])

		@review.review = params[:review][:review]
		
		if @review.save
			redirect_to product_path(id: id)
		else
			render :edit
		end
	end

	def destroy
		id = params[:product_id]
		@review = Review.find(params[:id])
		@review.destroy
		redirect_to product_path(id: id)
	end
end
