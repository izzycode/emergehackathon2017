Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :goals
  resources :users

  root 'home#index'
end
