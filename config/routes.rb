Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :garments do
    resources :bookings, only: [:index, :new, :create, :destroy]
  end
  root to: 'garments#index'
end
