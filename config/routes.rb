Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # get "/one_product" => "products#one"
  get "/products" => "products#index"
  get "/products/:id" => "products#show" #build a show method in products_controller.rb
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  #----Supplier -------
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  #------
  post "/users" => "users#create"
  #------
  get "/orders" => "orders#index" 
  get "/orders/:id" => "orders#show"
  post "/orders" => "orders#create"


  # Defines the root path route ("/")
  # root "posts#index"
end
