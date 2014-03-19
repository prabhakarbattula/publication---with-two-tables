class BooksController < ApplicationController

	def new
		@book = Book.new(author_id: params[:id])			
	end

	def create
		@book = Book.create(book_params)
		
		redirect_to author_path(id: @book.author_id)
  end

  def king

  end

  def index
    if params[:search]
      @books  = Book.search(params[:search]).order("created_at DESC")

    else
      @books = Book.all.order('created_at DESC')
    end
  end

  def show
    @book = Book.find(params[:id])
    @author = @book.author
  end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)

		redirect_to author_path(id: @book.author_id)
	end

	def destroy
		@book = Book.find(params[:id])
		@book.delete

		redirect_to authors_path
	end

	def book_params
		params.require(:book).permit(:book_name, :author_id)
	end

end
