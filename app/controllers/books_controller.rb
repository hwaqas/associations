class BooksController < ApplicationController

	def index
		@books = Book.all
		
	end

	def new
		@book = Book.new
		
	end

	def create
		@book=Book.new(book_params)

		@book.save
		redirect_to books_path
	end

	private
	def book_params
		params.require(:book).permit(:name, :auther_id)
		
	end
end
