Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy] do
        resources :pianos, only: [:index, :create, :destroy] 
      end
      resources :appointments, only: [:create, :show ]
    end
  end

end
