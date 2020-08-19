Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :albums
    # resources :newest
  resources :photos
end
