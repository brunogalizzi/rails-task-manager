# frozen_string_literal: true

# comment
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def complete_task
    @task = Task.find(params[:id])
    @task.completed = (@task.completed ? false : true)
    @task.save
    redirect_to task_path(@task)
  end

  def new_task
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def change
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
