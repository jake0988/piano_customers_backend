Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :pianos, only: [:index, :create]
      resources :appointments, only: [:index, :create]
    end
  end
end
