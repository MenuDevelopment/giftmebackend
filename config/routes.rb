Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :gifts
        resources :pledges
      end
      resources :gifts, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
