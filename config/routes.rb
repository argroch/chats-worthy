Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :messages, only: [:new, :create]
  resources :rooms, only: [:new, :create, :show]
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
