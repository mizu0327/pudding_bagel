Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users

  resources :posts do
    resources :recommends, except: [:index, :show]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
end