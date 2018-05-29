Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions
      resources :users do
        resources :pledges
      end
      resources :gifts, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
