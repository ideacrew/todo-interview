class TodoListsController < ApplicationController
	def index
		@todo_lists = TodoList.all
		respond_to do |format|
		    format.html
		    format.json do
		      render json: @todo_lists
		    end
  		end
	end

	def show
		@todo_list = TodoList.find(params[:id])
		respond_to do |format|
			format.html
			format.json do
				render json: @todo_list
			end
		end
	end

	def new
		@todo_list = TodoList.new
		respond_to do |format|
			format.html
			format.json do
				render json: @todo_list
			end
		end
	end

	def create
	end

	def edit
		@todo_list = TodoList.find(params[:id])
		# byebug
	end

	def update
	end

	def destroy
	end

	private
	    def permitted_params
	      params.require(:todo_list).permit(:title)
	    end
end
