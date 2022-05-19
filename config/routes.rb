Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "tesla", controller: "products", action: "tesla_json"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "suppliers" => "suppliers#index"
  get "suppliers/:id" => "suppliers#show"
  post "suppliers" => "suppliers#create"
  patch "suppliers/:id" => "suppliers#update"
  delete "suppliers/:id" => "suppliers#destroy"

  get "images" => "images#index"
  # get "images" => "images#show"
  # post "images" => "images#create"
  # patch "images" => "images#update"
  # delete "images" => "images#destroy"

  post "users" => "users#create"

  post "/sessions" => "sessions#create"

  get "orders" => "orders#index"
  get "orders/:id" => "orders#show"
  post "orders" => "orders#create"

  # get "carts" => "carts#index"
  post "carts" => "carted_products#create"
end
