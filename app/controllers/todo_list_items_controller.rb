class TodoListItemsController < ApplicationController
	before_action :set_todo_list_item, except: [:new, :create]
	
	def new
		@todo_list = TodoList.find(params[:id])
		@todo_list_items = @todo_list.todo_list_items.new
	end

	def create
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def todo_list_items_params
		params.require(:todo_list_item).permit(:description, :completed, :todo_list_id)
	end

	def set_todo_list_item
		@todo_list_item = TodoListItem.find(params[:id])
	end

end
