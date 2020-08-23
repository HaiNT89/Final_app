Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    
  }
  resources :users
  root to: "photos#index"
  resources :albums
    # resources :newest
  resources :photos
end
