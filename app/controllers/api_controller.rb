class ApiController < ApplicationController
  # 全taskの取得
  def tasks
    tasks = Task.all
    render json: tasks
  end
  def create
    tasks = Task.all
    task = Task.new(order: tasks.count, title: params[:title], description: params[:description])
    if task.save
      render json: task
    else
      render status: 400
    end
  end
  def update
    if task = Task.find_by(id: params[:id])
      if task.update(order: params[:order], title: params[:title], description: params[:description])
        render status: 200
      else
        render status: 400
      end
    else
      render status: 404
    end
  end
  def delete
    if task = Task.find_by(id: params[:id])
      task.destroy
      render status: 200
    else
      render status: 404
    end
  end
  def task
    if task = Task.find_by(id: params[:id])
      render json: task
    else
      render status: 404
    end
  end
end
