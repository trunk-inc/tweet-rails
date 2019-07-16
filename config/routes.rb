Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :users

  ## 以下を追加
  resources :sessions, only: [:new, :create]
  resources :timeline, only: :index
end
