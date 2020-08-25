Rails.application.routes.draw do
  
  get 'relationships/follow_user'
  get 'relationships/unfollow_user'
  post ':id/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':id/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user

  resources :reactions
  
  devise_for :users, controllers: {
    sessions: 'users/sessions' 
  }
  #resources :users
  #get '/profile/photo/:id', to: 'proflie/photo#show', as: 'profile_photo'
  # get '/users/:id', to: 'users#show', as: 'user'
  #get '/discovers(.:format)', to: 'discovers#index', as: 'discover'
  namespace :discovers do
    resources :albums, :photos, only: [:index]
  end
  namespace :profile do
    resources :albums, :photos, only: [:show]
  end
  root to: "photos#index"
  #resources :follows
  resources :follows, :only => [:create, :destroy]
  resources :albums
    # resources :newest
  resources :photos
end
