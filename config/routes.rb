Rails.application.routes.draw do
  devise_for :customers
  namespace :api do
    namespace :v1 do
      devise_for :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index]
    end
  end
end