Rails.application.routes.draw do
  
  get 'relationships/follow_user'
  get 'relationships/unfollow_user'
  post ':id/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':id/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user

  get 'reactions/react_photo'
  get 'reactions/unreact_photo'
  post ':id/react_photo', to: 'reactions#react_photo', as: :react_photo
  post ':id/unreact_photo', to: 'reactions#unreact_photo', as: :unreact_photo

  get 'reactions/react_album'
  get 'reactions/unreact_album'
  post ':id/react_album', to: 'reactions#react_album', as: :react_album
  post ':id/unreact_album', to: 'reactions#unreact_album', as: :unreact_album

  post ':id/edit_profile_user', to: 'user#edit_profile_user', as: :edit_profile_user
  
  devise_for :users, controllers: {
    sessions: 'users/sessions' 
  }
  namespace :discovers do
    resources :albums, :photos, only: [:index]
  end
  namespace :profile do
    resources :albums, :photos, :following, :follower, only: [:show]
  end
  root to: "discovers/photos#index"
  #resources :follows
  #resources :follows, :only => [:create, :destroy]
  resources :albums
    # resources :newest
  resources :photos
end
