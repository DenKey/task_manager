class TasksController < ApplicationController
  def destroy
    task = Task.find(params[:id])
    task.destroy
    head :ok
  end
end
