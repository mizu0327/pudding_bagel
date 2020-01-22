Rails.application.routes.draw do
  root to: 'home#index'

  resources :posts
  #   resources :recommends, except: [:index, :show]
  #   resources :likes, only: [:create, :destroy]
  # end

  devise_for :users
  resources :users
end