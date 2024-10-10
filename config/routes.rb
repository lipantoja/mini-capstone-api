Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # get "/one_product" => "products#one"
  get "/carted_products" => "carted_products#create"
  
  get "/orders" => "orders#index" 
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"

  get "/products" => "products#index"
  get "/products/:id" => "products#show" 

  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  
  post "/sessions" =>"sessions#create"
  
  post "/users" => "users#create"


end
