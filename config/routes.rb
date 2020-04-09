Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :itineraries do
    resources :destinations, only: [:new, :create, :edit, :update]
    resources :accommodations, only: [:new, :create, :edit, :update]
    resources :activities, only: [:new, :create, :edit, :update]
    resources :transports, only: [:new, :create, :edit, :update]
  end
end
