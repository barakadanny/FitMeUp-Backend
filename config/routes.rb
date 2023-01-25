Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trainers
      resources :specialities, only: [:index]
    end
  end
end
