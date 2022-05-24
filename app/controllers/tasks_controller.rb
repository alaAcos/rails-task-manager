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
    redirect_to tasks_path(@task)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
