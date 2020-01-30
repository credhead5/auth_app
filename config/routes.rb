Rails.application.routes.draw do
  get 'api/sessions'
  namespace :api do
    get "/auths" => "auths#index"

    get "/users/:id" => "users#show"

    post "/auths" => "auths#create" 

    patch "auths/:id" => "auths#update"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end
end
