Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD - CREATE, READ, UPDATE, DELETE
  # VERB "path", to: "controller#action"
  
  # # See all tasks
  get '/tasks', to: 'tasks#index'
  
  # # Create a task
  get "/tasks/new", to: "tasks#new"
  post "/tasks", to: "tasks#create"

  # # See details about one task
  get "/tasks/:id", to: "tasks#show", as: :task

  # # Update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # # Destroy a task
  delete "/tasks/:id", to: "tasks#destroy"
  # resources :tasks
end
