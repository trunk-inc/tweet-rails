Rails.application.routes.draw do
  get 'tweets/new'
  resources :tweets, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :users

  resources :sessions, only: [:new, :create]
  resources :timeline, only: :index
end
