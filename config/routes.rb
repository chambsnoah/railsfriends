Rails.application.routes.draw do
  devise_for :users
  resources :friends
  #get "home/index"
  get "home/about"
  #root 'home#index'
  root 'friends#index'

  get "up" => "rails/health#show", as: :rails_health_check


end
