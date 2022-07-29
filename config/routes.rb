Rails.application.routes.draw do
  resources :movies
  root to: "pages#home"

  namespace :api do
    namespace :v1 do
      resources :movies
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
