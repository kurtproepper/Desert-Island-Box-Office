Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/user/:id" => "users#show"
  get "/users" => "users#index"
  get "/users/compare" => "users#compare"

  get "/movies/search/:title" => "movies#search"
  post "/movies" => "movies#create"
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  post "/user_movies" => "user_movies#create"
  get "/user_movies" => "user_movies#index"
  get "/user_movies/:id" => "user_movies#show"
  delete "/user_movies/:id" => "user_movies#destroy"
  patch "/user_movies/:id" => "user_movies#update"
end
