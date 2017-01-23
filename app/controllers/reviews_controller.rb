class ReviewsController < ApplicationController
	
	before_action :get_book
	before_action :get_review , only: [:edit, :update, :destroy]
	before_action :authenticate_user!, only:[:new, :edit]
	load_and_authorize_resource param_method: :my_sanitizer
	load_and_authorize_resource :through => :current_user
	
	
	def index
		@review = Review.find(params[:id])
	end


	def show
		@review = Review.find(params[:id])
		
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
		authorize! :update, @review 
		
	end	

	def update
			authorize! :update, @review
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

	def my_sanitizer
    params.require(:review).permit(:rating, :comment)
  	end


	def review_params
		 params.require(:review).permit(:rating, :comment)
	end

	def get_book
		@book = Book.find(params[:book_id])
	end

	def get_review
		@review = Review.find(params[:id])
	end



end




