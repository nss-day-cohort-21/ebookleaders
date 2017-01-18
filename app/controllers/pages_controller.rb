class PagesController < ApplicationController
	
	
	before_action :get_review , only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only:[:new, :edit]
	
	


	def show
		@authorbio = User.find(1).author_bio
		@authorname = User.find(1).name
		
	end
	

	def new
		@review  = Review.new
	end 

	def create
		@review = Review.new(review_params)
		@review.book_id = @book.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to book_path(@book)
		else
			render 'new'
		end

	end

	def edit
		
	end	

	def update
			@review = Review.find(params[:id])
			if @review.update(review_params) 
				redirect_to book_path(@book)
			else
				render 'edit'
			end
		end


	def destroy
		@review.destroy
		redirect_to book_path(@book)
	end


private


	def review_params
		 params.require(:review).permit(:rating, :comment)
	end

	

	def get_review
		@review = Review.find(params[:id])
	end



end




