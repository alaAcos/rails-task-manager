# comment
class TasksController < ApplicationController
  def list
    @tasks = Task.all
  end

  def find
    @task = Task.find(params[:id])
  end

  def new
    @new_task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
