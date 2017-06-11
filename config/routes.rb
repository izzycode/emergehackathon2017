Rails.application.routes.draw do


  resources :payments
  devise_for :users, controllers: {
    omniauth_callbacks: 'omniauth_callbacks'
  }

  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  resources :goals
  resources :users do
    # resources :bank_payments
    resources :payments
    resources :pictures
  end

  root 'home#index'
  get 'testpage', to: 'home#tester'
  get 'new_bank_info', to: 'users#edit'
end
