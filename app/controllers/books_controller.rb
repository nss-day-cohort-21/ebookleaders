class BooksController < ApplicationController
	before_action :find_book, only:[:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only:[:new, :edit]
	load_and_authorize_resource param_method: :my_sanitizer
	
def authorbio
end



def index
	# used for search
	if params[:search]
		@books = Book.paginate(page: params[:page],:per_page => 20).search(params[:search]).order('created_at DESC')
	elsif params[:genre].blank?
		@books = Book.paginate(:page => params[:page], :per_page => 20).order('created_at DESC')
	elsif params[:genre] == "_All Books"
		@books = Book.paginate(:page => params[:page], :per_page => 20).order('created_at DESC')
	else
		@genre_id = Genre.find_by(name: params[:genre]).id
		@books = Book.where(:genre_id => @genre_id).paginate(:page => params[:page], :per_page => 20).order('updated_at DESC')
	end


end



def new 
	@book = current_user.books.build
	@genres = Genre.all.map {|g| [g.name, g.id]} #This line must go in edit too
end


def create
	@book = current_user.books.build (book_params)
	@book.genre_id = params[:genre_id]
	
	if @book.save 
		redirect_to root_path 
	else
		render 'new'
	end


end

def show
	
	if @book.reviews.blank?
		@average_review = 0
	else
		@average_review = @book.reviews.average(:rating)
	end
	

end


def edit
	authorize! :update, @book 
	@genres = Genre.all.map {|g| [g.name, g.id]}

end

def update
	authorize! :update, @book 
	@book.genre_id = params[:genre_id]
	if @book.update(book_params) 
		redirect_to book_path(@book)
	else
		render 'edit'
	end

end



def destroy
	authorize! :destroy, @book 
	@book.destroy
	redirect_to root_path
end


private

	def my_sanitizer
    params.require(:book).permit(:titleLstring, :details, :author)
  	end
	
	def book_params
		params.require(:book).permit(:details, :author, :titleLstring, :book_teaser, :genre_id, :book_imgage, :amazon_link, :ebookprice, :bookprice, :last_nominate_day)
	end


	def find_book
		@book = Book.find(params[:id])
	end 



end

