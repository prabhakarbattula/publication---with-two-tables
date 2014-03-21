class BooksController < ApplicationController

	def new
		@book = Book.new(author_id: params[:id])			
	end

	def create
		@book = Book.create(book_params)
		
		redirect_to book_path(id: @book.id)
  end

  def search

  end

  def show
    @book = Book.find(params[:id])
  end

  def display
    @books  = Book.search(params[:search]).order("book_name")
  end

  def index
      @books = Book.all.order('created_at DESC')
  end

  def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)

		redirect_to book_path(id: @book.id)
	end

	def destroy
		@book = Book.find(params[:id])
		@book.delete

		redirect_to books_path
	end

	def book_params
		params.require(:book).permit(:book_name, :author_id)
	end

end
