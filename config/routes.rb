Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      delete '/pianos/:id', to: 'pianos#destroy'
      resources :users, only: [:index, :create, :update, :destroy] do
        resources :pianos, only: [:index, :create] 
      end
      # resources :appointments, only: [:create, :show ]
      # resources :admins, only: [:create, :show ]
    end
  end

end
