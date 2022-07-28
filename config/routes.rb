Rails.application.routes.draw do
  resources :movies
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }

  root to: "pages#home"

  namespace :api do
    namespace :v1 do
      resources :movies
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
