Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  post '/home/guest_sign_in', to: 'home#new_guest'
  resources :users
  resources :recipes do
    resources :comments
    resources :likes
  end
end
