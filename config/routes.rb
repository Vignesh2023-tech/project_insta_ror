Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root "root#index"
  get "/index", to: "root#index"

  # User
  get "/signup", to: "user#signup"
  post "/signup", to: "user#create"
  get "/profile", to: "user#profile"
  patch "/update", to: "user#update"
  get "/password/reset", to: "user#password_reset_new"
  post "/password/reset", to: "user#password_reset_create"
  get "/password/reset/edit", to: "user#password_reset_edit"
  patch "/password/reset/update", to: "user#password_reset_update"

  # Session
  get "/login", to: "session#login"
  post "/login_user", to: "session#login_user"
  get "/logout", to: "session#logout"

  # Post
  get "/new_post", to: "post#new_post"
  post "/create_post", to: "post#create_post"
  get "/edit_post/:id", to: "post#edit_post"
  post "/update_post", to: "post#update_post"
  get "/delete_post/:id", to: "post#delete_post"

end
