class TasksController < ApplicationController
  def index
    @tasks = Task.paginate(page: params[:page], per_page: 10)
  end

  def show
    @task = Task.find(params[:id])
  end
end
