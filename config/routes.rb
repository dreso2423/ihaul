Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  get 'my_trucks', to: 'trucks#index_trucks'

  root to: 'pages#home'
  resources :trucks do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

