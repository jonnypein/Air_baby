Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :garments do
    resources :bookings, only: [:new, :create, :destroy]
  end

  # get 'bookings', to: 'bookings#index'
  resources :bookings

  root to: 'garments#index'

  resources :users, only:[:show, :edit, :update]
end
