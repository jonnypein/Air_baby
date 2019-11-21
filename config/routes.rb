Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :garments do
    resources :bookings, only: [:new, :create, :destroy]
  end

  # get 'bookings', to: 'bookings#index'
  resources :bookings
  get 'profile', to: 'pages#profile'

  root to: 'garments#index'

end
