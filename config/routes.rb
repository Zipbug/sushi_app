Rails.application.routes.draw do
  resources :raitings
  resources :items
  resources :menus
  resources :locations
  devise_for :users
  root to: "home#index" 
end
