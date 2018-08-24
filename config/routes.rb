Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :brands, only: [:show] do 
    resources :items
  end

  resources :categories, only: [:show] do
    resources :items
  end

  get '/items/sold', to: "items#sold"
  
  resources :users, only: [:new,:create]
  get '/login', to: "sessions#new"
  post '/sessions', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  get '/auth/facebook/callback' => 'sessions#create'
  
  root 'static_pages#index'
end
