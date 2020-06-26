Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update]
  resources :chatrooms, only: [:index, :show, :create] do
  resources :messages
end
  resources :search, only: [:index]
  resources :itineraries do
    resources :favourites, only: [:create]
    resources :destinations, only: [:new, :create, :edit, :update]
    resources :destinations do   
      resources :accommodations, only: [:new, :create, :edit, :update]
      resources :activities, only: [:new, :create, :edit, :update]
      resources :transports, only: [:new, :create, :edit, :update]
    end
    end  
  resources :favourites, only: [:destroy]
end
