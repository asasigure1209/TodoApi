Rails.application.routes.draw do
  get 'api/tasks' => "api#tasks"
  post 'api/tasks' => "api#create"
  get 'api/tasks/:id' => "api#task"
  put 'api/tasks/:id' => "api#update"
  delete 'api/tasks/:id' => "api#delete"
end
