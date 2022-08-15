Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/create'
  get 'reviews/update'
  get 'reviews/delete'
  get 'watchlist_movies/create'
  get 'watchlist_movies/update'
  get 'watchlist_movies/delete'
  get 'watchlists/index'
  get 'watchlists/create'
  get 'watchlists/update'
  get 'watchlists/delete'
  resources :movies
  root to: "pages#home"

  namespace :api do
    namespace :v1 do
      resources :movies, only: [ :index ]
      resources :favorites, only: [ :index, :create, :destroy ]
      resources :watchlists
      resources :reviews, only: [ :index, :create, :update, :destroy ]
    end
  end

  devise_for :users,
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              }
  get '/member-data', to: 'members#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
