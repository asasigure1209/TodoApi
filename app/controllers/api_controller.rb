class ApiController < ApplicationController
  # 全taskの取得
  def tasks
    tasks = Task.all
    render json: tasks
  end
end
