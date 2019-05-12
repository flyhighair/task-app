class TasksController < ApplicationController
  def index
    @tasks = Task.paginate(page: params[:page], per_page: 10)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    if task.save
      redirect_to root_path, notice: "新規タスクを登録しました。"
    else
      @task = Task.new(task_params)
      flash.now[:alert] = task.errors.full_messages.to_sentence
      render 'new'
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
