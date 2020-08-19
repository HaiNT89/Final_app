Rails.application.routes.draw do
  
  # resources :signup, :login, only: :create
  # #Khi click vào sẽ update photo hoặc album được react
  # get 'reaction', to: 'albums#update', as: 'reaction_album'
  # get 'reaction', to: 'photo#update', as: "reaction_photo"  
  # #
  # resources :photos, :albums
  # #
  # resources :follows, only: [:index, :show, :update, :destroy]
  # #
  # resources :profiles, except: [:index,:create]
  # #
  # namespace :admin do
  #   resources :signup, :login, only: :create
  #   resources :photos, :albums
  #   resources :profiles, except: [:index,:create]
  #   resources :accounts
  # end
    resources :accounts
    resources :albums
    resources :newest
    resources :photos
    
    # namespace :access do
    #   resources :albums
    # end

    # patch "/albums", to: "albums#update"
    # get 'newest', to: 'newest#index'
   
    
end
