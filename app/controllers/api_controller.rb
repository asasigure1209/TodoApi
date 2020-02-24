class ApiController < ApplicationController
  # 全taskの取得
  def tasks
    tasks = Task.all
    render json: tasks
  end
  def task
    if task = Task.find_by(id: params[:id])
      render json: task
    else
      render status: 404
    end
  end
end
