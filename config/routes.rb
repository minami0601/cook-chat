Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  resources :recipes, only: :index
  resources :users
end
