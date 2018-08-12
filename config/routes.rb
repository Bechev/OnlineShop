Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :brands do 
    resources :items
  end

  resources :categories do
    resources :items
  end
  
  # resources :items

  
  root 'static_pages#index'
end
