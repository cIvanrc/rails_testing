class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todos_params)
    redirect_to todos_path
  end

  private

  def todos_params
    params.require(:todo).permit(:title)
  end
end
