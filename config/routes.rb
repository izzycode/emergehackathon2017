Rails.application.routes.draw do

  resources :bank_payments
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  resources :goals
  resources :users

  root 'home#index'
  get 'testpage', to: 'home#tester'
end
