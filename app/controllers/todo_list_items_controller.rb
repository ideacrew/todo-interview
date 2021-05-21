class TodoListItemsController < ApplicationController
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
end
