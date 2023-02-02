Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'secure/auth_login', to: 'auths#login'
      resources :users
      resources :fitmeups, only: [:index]
      resources :trainers
      resources :specialities, only: [:index]
      resources :appointments
      resources :roles
    end
  end
end
