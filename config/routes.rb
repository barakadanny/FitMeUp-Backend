Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'secure/auth_login', to: 'auths#login'
      resources :users
      resources :fitmeups, only: [:index]
      resources :trainers
      resources :specialities, only: [:index, :create, :destroy]
      resources :appointments
      resources :roles
      resources :trainer_specialities, only: [:create]
    end
  end
end
