class AuthorsController < ApplicationController

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		@author.save

		redirect_to show_author_path(id: @author.id)
		
	end

	def show
		@author = Author.find(params[:id])
	end

	def index
		@authors = Author.all.order('author_name')
	end

	def edit
		@author = Author.find(params[:id])
	end

	def update
		@author = Author.find(params[:id])
		@author.update(author_params)

		redirect_to show_author_path(id: @author.id)
	end

	def delete
		@author = Author.find(params[:id])
		@author.delete

		redirect_to authors_path
	end

	def author_params
		params.require(:author).permit(:author_name)
	end

end
