Rails.application.routes.draw do
  get 'api/tasks' => "api#tasks"
  get 'api/tasks/:id' => "api#task"
end
