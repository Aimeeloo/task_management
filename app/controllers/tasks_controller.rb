class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to root_path, notice: "新增成功"
    else
      flash[:alert] = "新增失敗"
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to root_path, notice: "編輯成功"
    else
      flash[:alert] = "編輯失敗"
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path, notice: "刪除成功"
  end

  private
  def task_params
    params.require(:task).permit(:title, :category, :description, :priority, :status, :start_at, :end_at)
  end
  def find_task
    @task = Task.find_by(id: params[:id])
  end
end
