class BooksController < ApplicationController

	def new
		@book = Book.new(author_id: params[:id])			
	end

	def create
		@book = Book.create(book_params)
		
		redirect_to "/authors/show/#{@book.author_id}"
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)

		redirect_to "/authors/show/#{@book.author_id}"
	end

	def delete
		@book = Book.find(params[:id])
		@book.delete

		redirect_to "/authors/index"
	end

	def book_params
		params.require(:book).permit(:book_name, :author_id)
	end

end
