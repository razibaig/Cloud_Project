class ReviewsController < ApplicationController
	def add_review
		@hotel = Hotel.last
		@review = @hotel.reviews.create(user_id:current_user.id, review_text:params[:review][:review_text])
		redirect_to hotels_home_path
	end

	def destroy
		@review = Review.find(params[:id])
		if @review.present?
			@review.destroy
		end
		redirect_to root_path 
	end

end
