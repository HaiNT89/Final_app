Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "albums#index"
  resources :albums
    # resources :newest
  resources :photos
end
