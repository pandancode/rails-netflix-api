Rails.application.routes.draw do
  resources :movies
  devise_for :users
  root to: "pages#home"

  namespace :api do
    namespace :v1 do
      resources :movies
    end
  end

  resource :users, only: [:create]
   post "/login", to: "auth#login"
   get "/auto_login", to: "auth#auto_login"
   get "/user_is_authed", to: "auth#user_is_authed"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
