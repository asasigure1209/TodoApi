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
      render status: 200
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
      deleteOrder = task.order
      task.destroy
      tasks = Task.where('"order" > ?', deleteOrder)
      tasks.each do |task|
        task.order -= 1
        task.save
      end
      render json: Task.all
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
