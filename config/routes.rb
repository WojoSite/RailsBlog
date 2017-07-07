Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/" => "home#home"
  get "/" => "users#home"

  get "/loginform" => "users#login_form"

  post "/login" => "users#login"

  get "/logout" => "users#logout"

  get "/blogfeed" => "posts#index"



  # === RESTful routes ===
  resources :users do
    resources :posts
    resources :comments
  end


end
