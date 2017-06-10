Rails.application.routes.draw do
  devise_for :users
  resources :goals
  resources :users

  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions',
    },
  end

  

end
