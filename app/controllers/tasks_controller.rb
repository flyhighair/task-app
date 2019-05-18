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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    if task.update(task_params)
      redirect_to root_path, notice: "タスク「#{task.name}」を更新しました。"
    else
      redirect_to edit_task_path, alert: task.errors.full_messages.to_sentence
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to root_path, notice: "タスク「#{task.name}」を削除しました、"
  end

  private

  def task_params
    params.require(:task).permit(:name, :description)
  end
end
