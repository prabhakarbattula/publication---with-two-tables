class AuthorsController < ApplicationController

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		@author.save

		redirect_to author_path(id: @author.id)
	end

  def king

  end

	def show
		@author = Author.find(params[:id])
  end

	 def index
     if params[:search]
       @authors  = Author.search(params[:search]).order("created_at DESC")
     else
       @authors = Author.all.order('created_at DESC')
     end
   end


	def edit
		@author = Author.find(params[:id])
	end

	def update
		@author = Author.find(params[:id])
		@author.update(author_params)

		redirect_to author_path(id: @author.id)
	end

	def destroy
		@author = Author.find(params[:id])
		@author.delete

		redirect_to authors_path
	end

	def author_params
		params.require(:author).permit(:author_name)
	end

end
