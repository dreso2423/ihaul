Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :trucks
  resources :bookings, only: [:create]
  resources :reviews, only: [:create]

end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

