Rails.application.routes.draw do
  resources :goals
  resources :users
  root 'home#index'
end
