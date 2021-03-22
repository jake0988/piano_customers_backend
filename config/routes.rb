Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
         :users, only: [:index, :create]
    end
  end

end
