class TaskController < ApplicationController
	before_action :all_tasks, only: [:index, :create]
  respond_to :html, :js


  def new
  	@task = Task.all
  end

  def create
  	@task = Task.create(task_param)
  end


private

def all_tasks
	@task = Task.all
end

def task_params
	params.require(:task).permit(:description, :deadline)
end
end
