Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :trainers do
        resources :trainer_specialities, only: [:index]
      end
    end
  end
end
