Rails.application.routes.draw do
  root 'home#index'

  match '/about'              =>        'home#about',              via: [:get],            :as => 'about'
end
