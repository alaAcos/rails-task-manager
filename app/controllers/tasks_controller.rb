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
end
