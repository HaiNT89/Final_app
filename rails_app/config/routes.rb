Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions' 
  }
  #resources :users
  get '/users/:id', to: 'users#show', as: 'user'
  #get '/discovers(.:format)', to: 'discovers#index', as: 'discover'
  namespace :discovers do
    resources :albums, :photos, only: [:index]
  end
  root to: "photos#index"
  resources :albums
    # resources :newest
  resources :photos
end
