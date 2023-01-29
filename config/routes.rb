Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'users/login', to: 'users#login'
      resources :trainers
      resources :specialities, only: [:index]
      resources :appointments
      resources :roles
    end
  end
end
