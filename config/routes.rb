Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Rooms
  get "/rooms" => "rooms#index"
  post "/rooms" => "rooms#create"
  get "/rooms/:id" => "rooms#show"
  patch "/rooms/:id" => "rooms#update"

  # Tasks
  get "/tasks" => "tasks#index"
  post "/tasks" => "tasks#create"
  get "/tasks/:id" => "tasks#show"
  patch "/tasks/:id" => "tasks#update"
  
  # Users
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"


  # Sessions
  post "/sessions" => "sessions#create"
end
